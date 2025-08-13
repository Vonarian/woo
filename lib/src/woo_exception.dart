import 'dart:io';

/// Public contract for name-related errors in the Woo domain.
///
/// Use the factory constructor to create an instance. The optional [message]
/// can carry additional context that will be included in [toString].
abstract interface class WooNameException implements Exception {
  /// Creates a new [WooNameException] with an optional contextual [message].
  factory WooNameException([dynamic message]) => _WooNameException(message);

  /// Performs a severe action for unrecoverable name issues.
  ///
  /// This immediately terminates the current process with exit code -2
  /// using `dart:io`'s [exit].
  void wtf();
}

/// Internal implementation of [WooNameException].
///
/// Carries an optional [message] payload and implements [wtf] by
/// terminating the process with a non-zero exit code.
class _WooNameException implements WooNameException {
  /// Optional contextual message associated with this exception.
  final dynamic message;

  /// Creates a private exception with an optional [message].
  _WooNameException([this.message]);

  @override
  /// Immediately exits the process with code `-2`.
  void wtf() {
    exit(-2);
  }

  @override
  /// Human-readable representation that includes the [message] when present.
  String toString() {
    Object? message = this.message;
    if (message == null) return "WooNameException";
    return "WooNameException: $message";
  }
}
