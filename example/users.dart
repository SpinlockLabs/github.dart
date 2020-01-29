import 'dart:async';
import 'dart:html';

import 'package:github/github.dart';

import 'common.dart';

DivElement usersDiv;

Future<void> main() async {
  await initViewSourceButton('users.dart');
  usersDiv = querySelector('#users');
  loadUsers();
}

void loadUsers() {
  github.users.listUsers(pages: 2).take(12).listen((User baseUser) {
    github.users.getUser(baseUser.login).then((user) {
      final userDiv = DivElement();

      for (var i = 1; i <= 2; i++) {
        userDiv.append(BRElement());
      }

      userDiv.append(createAvatarImage(user, width: 64, height: 64)
        ..classes.add('avatar'));
      final buff = StringBuffer();

      buff
        ..writeln('Username: <a href="${baseUser.htmlUrl}">${user.login}</a>')
        ..writeln('Created: ${user.createdAt}')
        ..writeln('Updated: ${user.updatedAt}');

      if (user.company != null && user.company.isNotEmpty) {
        buff.writeln('Company: ${user.company}');
      }

      buff.writeln('Followers: ${user.followersCount}');

      userDiv.append(ParagraphElement()
        ..appendHtml(buff.toString().replaceAll('\n', '<br/>'),
            treeSanitizer: NodeTreeSanitizer.trusted));

      usersDiv.append(userDiv);
    });
  });
}
