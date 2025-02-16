// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
        'you can reconfigure this by running the FlutterFire CLI again.',
      );
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAxqpgj7aq5wHiHnwGfnrEoEETS-sUpkjc',
    appId: '1:405589142150:android:c93c63765d2c5c30f23f07',
    messagingSenderId: '405589142150',
    projectId: 'k-opulent',
    storageBucket: 'k-opulent.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBr5S7Jy1tAnSnBpIIbWycCF6Bxbuu9jU8',
    appId: '1:405589142150:ios:6e437edeba6c6f63f23f07',
    messagingSenderId: '405589142150',
    projectId: 'k-opulent',
    storageBucket: 'k-opulent.firebasestorage.app',
    androidClientId: '405589142150-gmrd4mach8idj02gicvv2lagp8dslsi5.apps.googleusercontent.com',
    iosClientId: '405589142150-alhtlb6hq9uto8hng52kaqp3lfinumbc.apps.googleusercontent.com',
    iosBundleId: 'com.kartikeyraghav.opulent',
  );

}