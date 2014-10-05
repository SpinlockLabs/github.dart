part of github.common;

/// The [UsersService] handles communication with user related methods of the 
/// GitHub API.
///  
/// API docs: https://developer.github.com/v3/users/
class UsersService extends Service {
  
  UsersService(GitHub github) : super(github);
  
  /// Fetches the user specified by [name].
  /// 
  /// API docs: https://developer.github.com/v3/users/#get-a-single-user
  Future<User> getUser(String name) =>
      _github.getJSON("/users/${name}", convert: User.fromJSON);
  
  /// Fetches a list of users specified by [names].
  Stream<User> getUsers(List<String> names, {int pages}) {
    var controller = new StreamController();

    var group = new FutureGroup();

    for (var name in names) {
      group.add(getUser(name).then((user) {
        controller.add(user);
      }));
    }

    group.future.then((_) {
      controller.close();
    });

    return controller.stream;
  }
  
  /// Fetches the currently authenticated user.
  /// 
  /// Throws [AccessForbidden] if we are not authenticated.
  /// 
  /// API docs: https://developer.github.com/v3/users/#get-the-authenticated-user
  Future<CurrentUser> getCurrentUser() {
    return _github.getJSON("/user", statusCode: StatusCodes.OK, fail: (http.Response response) {
      if (response.statusCode == StatusCodes.FORBIDDEN) {
        throw new AccessForbidden(_github);
      }
    }, convert: CurrentUser.fromJSON);
  }
  
  /// Checks if a user exists.
  Future<bool> isUser(String name) =>
      _github.request("GET", "/users/${name}").then((resp) => resp.statusCode == StatusCodes.OK);

  // TODO: Implement editUser: https://developer.github.com/v3/users/#update-the-authenticated-user
  
  /// Lists all users.
  /// 
  /// API docs: https://developer.github.com/v3/users/#get-all-users
  Stream<User> listUsers({int pages}) => 
      new PaginationHelper(_github).objects("GET", "/users", User.fromJSON, 
          pages: pages);
  
  /// Lists all email addresses for the currently authenticated user.
  /// 
  /// API docs: https://developer.github.com/v3/users/emails/#list-email-addresses-for-a-user
  Stream<UserEmail> listEmails() =>
      new PaginationHelper(_github).objects("GET", "/user/emails", 
          UserEmail.fromJSON);
  
  // TODO: Implement addEmails: https://developer.github.com/v3/users/emails/#add-email-addresses
  
  // TODO: Implement deleteEmails: https://developer.github.com/v3/users/emails/#delete-email-addresses
  
  
  // TODO: Implement follower methods: https://developer.github.com/v3/users/followers/
  
  /// Lists the verified public keys for a [userLogin]. If no [userLogin] is specified,
  /// the public keys for the authenticated user are fetched.
  /// 
  /// API docs: https://developer.github.com/v3/users/keys/#list-public-keys-for-a-user
  /// and https://developer.github.com/v3/users/keys/#list-your-public-keys
  Stream<PublicKey> listPublicKeys([String userLogin]) {
    var path = userLogin == null ? "/user/keys" : "/users/${userLogin}/keys";
    return new PaginationHelper(_github).objects("GET", path, PublicKey.fromJSON);
  }
  
  // TODO: Implement getPublicKey: https://developer.github.com/v3/users/keys/#get-a-single-public-key
  
  /// Adds a public key for the authenticated user.
  /// 
  /// API docs: https://developer.github.com/v3/users/keys/#create-a-public-key
  Future<PublicKey> createPublicKey(CreatePublicKey key) {
    return _github.postJSON("/user/keys", body: key.toJSON());
  }
  
  // TODO: Implement updatePublicKey: https://developer.github.com/v3/users/keys/#update-a-public-key
  // TODO: Implement deletePublicKey: https://developer.github.com/v3/users/keys/#delete-a-public-key
  
}