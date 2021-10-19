import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/services.dart';

class FirebaseDatabaseException extends FirebaseException implements Exception {
  FirebaseDatabaseException({
    String? code,
    String? message,
    StackTrace? stackTrace,
  }) : super(
          plugin: 'firebase_database',
          code: code ?? 'unknown',
          message: message ?? 'An unknown error occurred',
          stackTrace: stackTrace,
        );

  static FirebaseDatabaseException fromPlatformException(
    PlatformException exception, [
    StackTrace? stackTrace,
  ]) {
    return FirebaseDatabaseException(
      code: exception.code,
      message: exception.message,
      stackTrace: stackTrace,
    );
  }
}
