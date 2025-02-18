enum UserRole { Admin, Editor, Viewer }

class User {
  String name;
  UserRole role;

  User(this.name, this.role);

  void checkAccess() {
    if (role == UserRole.Admin) {
      print("$name has full access.");
    } else if (role == UserRole.Editor) {
      print("$name can edit content.");
    } else {
      print("$name can only view content.");
    }
  }
}

void main() {
  User user1 = User("Alice", UserRole.Admin);
  User user2 = User("Bob", UserRole.Viewer);

  user1.checkAccess(); // Output: Alice has full access.
  user2.checkAccess(); // Output: Bob can only view content.
}
