class OpulentExceptions implements Exception {
  final String message;

  const OpulentExceptions(
      [this.message = 'An unexpected error occurred. Please try again.']);

  factory OpulentExceptions.fromCode(String code) {
    switch (code) {
      case 'email-already-in-use':
        return const OpulentExceptions(
            'The email address is already registered. Please use a different email.');
      case 'invalid-email':
        return const OpulentExceptions(
            'The email address provided is invalid. Please enter a valid email.');
      case 'weak-password':
        return const OpulentExceptions(
            'The password is too weak. Please choose a stronger password.');
      case 'user-disabled':
        return const OpulentExceptions(
            'This user account has been disabled. Please contact support for assistance.');
      case 'user-not-found':
        return const OpulentExceptions(
            'Invalid login details. User not found.');
      case 'wrong-password':
        return const OpulentExceptions(
            'Incorrect password. Please check your password and try again.');
      case 'INVALID_LOGIN_CREDENTIALS':
        return const OpulentExceptions(
            'Invalid login credentials. Please double-check your information.');
      case 'too-many-requests':
        return const OpulentExceptions(
            'Too many requests. Please try again later.');
      case 'invalid-argument':
        return const OpulentExceptions(
            'Invalid argument provided to the authentication method.');
      case 'invalid-password':
        return const OpulentExceptions('Incorrect password. Please try again.');
      case 'invalid-phone-number':
        return const OpulentExceptions('The provided phone number is invalid.');
      case 'operation-not-allowed':
        return const OpulentExceptions(
            'The sign-in provider is disabled for your Firebase project.');
      case 'session-cookie-expired':
        return const OpulentExceptions(
            'The Firebase session cookie has expired. Please sign in again.');
      case 'uid-already-exists':
        return const OpulentExceptions(
            'The provided user ID is already in use by another user.');
      case 'sign_in_failed':
        return const OpulentExceptions('Sign-in failed. Please try again.');
      case 'network-request-failed':
        return const OpulentExceptions(
            'Network request failed. Please check your internet connection.');
      case 'internal-error':
        return const OpulentExceptions(
            'Internal error. Please try again later.');
      case 'invalid-verification-code':
        return const OpulentExceptions(
            'Invalid verification code. Please enter a valid code.');
      case 'invalid-verification-id':
        return const OpulentExceptions(
            'Invalid verification ID. Please request a new verification code.');
      case 'quota-exceeded':
        return const OpulentExceptions(
            'Quota exceeded. Please try again later.');
      default:
        return const OpulentExceptions();
    }
  }
}
