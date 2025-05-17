class CFirebaseException implements Exception {
  final String code;

  CFirebaseException(this.code);

  String get message {
    switch (code) {
      case 'permission-denied':
        return 'You do not have permission to perform this action.';
      case 'unavailable':
        return 'The server is currently unavailable. Please try again later.';
      case 'weak-password':
        return 'The password provided is too weak.';
      case 'email-already-in-use':
        return 'The account already exists for that email.';
      case 'invalid-email':
        return 'The email address is malformed.';
      default:
        return 'A Firebase error occurred. Please try again.';
    }
  }
}

class CFormatException implements Exception {
  const CFormatException();

  String get message => 'Invalid data format.';
}

class CPlatformException implements Exception {
  final String code;

  CPlatformException(this.code);

  String get message {
    switch (code) {
      case 'network_error':
        return 'Network error. Please check your internet connection.';
      case 'device_not_supported':
        return 'This feature is not supported on your device.';
      default:
        return 'A platform error occurred. Please try again.';
    }
  }
}

class CFirebaseAuthException implements Exception {
  final String code;

  CFirebaseAuthException(this.code);

  String get message {
    switch (code) {
      case 'email-already-in-use':
        return 'The account already exists for that email.';
      case 'invalid-email':
        return 'The email address is malformed.';
      case 'weak-password':
        return 'The password provided is too weak.';
      case 'user-disabled':
        return 'This user account has been disabled.';
      case 'user-not-found':
        return 'No user found with this email address.';
      case 'wrong-password':
        return 'Incorrect password. Please try again.';
      case 'invalid-verification-code':
        return 'The verification code is invalid.';
      case 'invalid-verification-id':
        return 'The verification ID is invalid.';
      case 'too-many-requests':
        return 'Too many unsuccessful attempts. Please try again later.';
      case 'operation-not-allowed':
        return 'This sign-in operation is not allowed.';
      case 'account-exists-with-different-credential':
        return 'An account already exists with the same email but different sign-in credentials.';
      case 'requires-recent-login':
        return 'This operation requires recent authentication. Please log in again.';
      default:
        return 'An authentication error occurred. Please try again.';
    }
  }
}
