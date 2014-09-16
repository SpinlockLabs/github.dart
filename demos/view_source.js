var args = document.location.search.substring(1).split('&');

var opts = {};

for (var i = 0; i < args.length; i++) {
  var arg = window.decodeURIComponent(args[i]);

  if (arg.indexOf('=') == -1) {
    opts[arg.trim()] = true;
  } else {
    var kvp = arg.split('=');
    opts[kvp[0].trim()] = kvp[1].trim();
  }
}

function opt(name, def) {
  if (Object.keys(opts).indexOf(name) !== -1) {
    return opts[name];
  } else {
    return def;
  }
}

function createEditor(code) {
  var editor = ace.edit("editor");

  editor.focus();
  editor.setReadOnly(opts['editable'] ? true : false);

  editor.commands.addCommand({
    name: 'saveFile',
    bindKey: {
      win: 'Ctrl-S',
      mac: 'Command-S',
      sender: 'editor|cli'
    },
    exec: function() {}
  });

  editor.setTheme("ace/theme/" + opt("theme", "github"));
  editor.getSession().setMode("ace/mode/" + opt("mode", "dart"));
  editor.setShowPrintMargin(false);
  editor.setValue(code, 0);
  editor.clearSelection();
  editor.moveCursorTo(0, 0);
  editor.setReadOnly(true);
}

function receiveMessage(event) {
  var msg = event.data;

  if (msg.command === "code") {
    createEditor(msg.code);
  }
}

if (window.opener !== null) {
  window.addEventListener("message", receiveMessage);
} else {
  if (Object.keys(opts).indexOf("path") !== -1) {
    var req = new XMLHttpRequest();
    req.open("GET", opts.path);

    req.onreadystatechange = function() {
      if (req.readyState === XMLHttpRequest.DONE) {
        if (req.status === 200) {
          createEditor(req.responseText);
        } else {
          createEditor("ERROR: " + opts.path + " was not found.");
        }
      }
    };
    req.send();
  }
}

ready(function () {
  if (window.opener) {
    window.opener.postMessage({ "command": "ready" }, "*");
  }
});