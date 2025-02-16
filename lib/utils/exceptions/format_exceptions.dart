class OpulentFormatException implements Exception {
  final String message;

  const OpulentFormatException([this.message = 'An unexpected format error occurred. Please check your input.']);

  factory OpulentFormatException.fromMessage(String message) {
    return OpulentFormatException(message);
  }

  String get formattedMessage => message;

  factory OpulentFormatException.fromCode(String code) {
    switch (code) {
      case 'invalid-email-format':
        return const OpulentFormatException('The email address format is invalid. Please enter a valid email.');
      case 'invalid-phone-number-format':
        return const OpulentFormatException('The provided phone number format is invalid. Please enter a valid number.');
      case 'invalid-date-format':
        return const OpulentFormatException('The date format is invalid. Please enter a valid date.');
      case 'invalid-url-format':
        return const OpulentFormatException('The URL format is invalid. Please enter a valid URL.');
      case 'invalid-credit-card-format':
        return const OpulentFormatException('The credit card format is invalid. Please enter a valid credit card number.');
      case 'invalid-numeric-format':
        return const OpulentFormatException('The input should be a valid numeric format.');
    // Add more cases as needed...
      default:
        return const OpulentFormatException();
    }
  }
}