var args = document.location.search.substring(1).split('&');

argsParsed = {};

for (i = 0; i < args.length; i++) {
  arg = unescape(args[i]);

  if (arg.indexOf('=') == -1) {
    argsParsed[arg.trim()] = true;
  } else {
    kvp = arg.split('=');
    argsParsed[kvp[0].trim()] = kvp[1].trim();
  }
}

function createEditor(code) {
  var editor = ace.edit("editor");
  editor.focus();
  editor.setReadOnly(true);

  editor.setTheme("ace/theme/github");
  editor.getSession().setMode("ace/mode/dart");
  editor.setShowPrintMargin(false);
  editor.setValue(code, 0);
  editor.clearSelection();
  editor.moveCursorTo(0, 0);
}

if (window.opener !== null) {
  window.addEventListener("message", receiveMessage);

  function receiveMessage(event) {
    var msg = event.data;

    if (msg.command === "code") {
      createEditor(msg.code);
    }
  }
} else {
  if (Object.keys(argsParsed).indexOf("script") !== -1) {
    var req = new XMLHttpRequest();
    req.open("GET", argsParsed['script']);
    req.onreadystatechange = function() {
      if (req.readyState === XMLHttpRequest.DONE) {
        if (req.status === 200) {
          createEditor(req.responseText);

        } else {
          createEditor("ERROR: " + argsParsed['script'] + " was not found.");
        }
      }
    }
    req.send();
  }
}