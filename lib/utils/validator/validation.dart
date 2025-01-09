// validation.dart
class KValidator {

  /// Empty Text Validation
  static String? validateEmptyText(String? fieldName, String? value) {
    if (value == null || value.isEmpty) {
      return '$fieldName is required.';
    }
    return null;
  }

  static String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Email is required.';
    }

    final emailRegExp = RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}\$');
    if (!emailRegExp.hasMatch(value)) {
      return 'Invalid email address.';
    }
    return null;
  }

  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Password is required.';
    }

    if (value.length < 6) {
      return 'Password must be at least 6 characters long';
    }

    if (!value.contains(RegExp(r'[A-Z]'))) {
      return 'Password must contain at least one uppercase letter.';
    }

    if (!value.contains(RegExp(r'[0-9]'))) {
      return 'Password must contain at least one number.';
    }

    if (!value.contains(RegExp(r'[!@#\$%^&*(),.?":{}|<>]'))) {
      return 'Password must contain at least one special character.';
    }
    return null;
  }

  static String? validatePhoneNumber(String? value) {
    if (value == null || value.isEmpty) {
      return 'Phone number is required.';
    }

    final phoneRegExp = RegExp(r'^\d{10}\$');
    if (!phoneRegExp.hasMatch(value)) {
      return 'Invalid phone number format (10 digits required).';
    }
    return null;
  }

  static String? validateName(String? value) {
    if (value == null || value.isEmpty) {
      return 'Name is required.';
    }

    final nameRegExp = RegExp(r'^[a-zA-Z\s]+\$');
    if (!nameRegExp.hasMatch(value)) {
      return 'Name can only contain letters and spaces.';
    }
    return null;
  }

  static String? validateUsername(String? value) {
    if (value == null || value.isEmpty) {
      return 'Username is required.';
    }

    final usernameRegExp = RegExp(r'^[a-zA-Z0-9._-]{3,15}\$');
    if (!usernameRegExp.hasMatch(value)) {
      return 'Username must be 3-15 characters and can contain letters, numbers, dots, underscores, or hyphens.';
    }
    return null;
  }
}