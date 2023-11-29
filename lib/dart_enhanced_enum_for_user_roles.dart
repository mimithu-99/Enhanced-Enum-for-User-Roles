/// Support for doing something awesome.
///
/// More dartdocs go here.
library;

export 'src/dart_enhanced_enum_for_user_roles_base.dart';

// TODO: Export any libraries intended for clients of this package.
/*
3: Enhanced Enum for User Roles
Question:

Create an enhanced enum UserRole with values Admin, 
Editor, Viewer.
Each enum value should have a permissions property, returning 
a List<String> representing the permissions associated 
with the role (e.g., Admin might have 
['create', 'edit', 'delete', 'view']).
Add a method hasPermission(String permission) that 
checks if the role includes a specific permission.

*/

enum UserRole {
  Admin,
  Editor,
  Viewer;

  List<String> get permissions {
    if (this == Admin) {
      return ['create', 'edit', 'delete', 'view'];
    } else if (this == Editor) {
      return ['edit', 'view'];
    } else {
      return ['view'];
    }
  }

  bool hasPermission(String x) {
    if (permissions.contains(x)) {
      return true;
    } else {
      return false;
    }
  }
}
