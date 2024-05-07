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
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        return windows;
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

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyC9joOA3Br9veTB6Yunmd0T9eVPJGmCuaM',
    appId: '1:1067534751605:web:d4f334e950ad900a49a53c',
    messagingSenderId: '1067534751605',
    projectId: 'university-app-1d194',
    authDomain: 'university-app-1d194.firebaseapp.com',
    databaseURL: 'https://university-app-1d194-default-rtdb.europe-west1.firebasedatabase.app',
    storageBucket: 'university-app-1d194.appspot.com',
    measurementId: 'G-57CNZP64J7',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBNus6CeDGQTa_VUv9GMt8GTXDuS0p_tPA',
    appId: '1:1067534751605:android:555d306e0abe1c8149a53c',
    messagingSenderId: '1067534751605',
    projectId: 'university-app-1d194',
    databaseURL: 'https://university-app-1d194-default-rtdb.europe-west1.firebasedatabase.app',
    storageBucket: 'university-app-1d194.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBgixYpOtx2GZqf_PlZFQURxvJ-B4g42OM',
    appId: '1:1067534751605:ios:f9b27613fd5e7bb849a53c',
    messagingSenderId: '1067534751605',
    projectId: 'university-app-1d194',
    databaseURL: 'https://university-app-1d194-default-rtdb.europe-west1.firebasedatabase.app',
    storageBucket: 'university-app-1d194.appspot.com',
    iosBundleId: 'com.example.educationApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBgixYpOtx2GZqf_PlZFQURxvJ-B4g42OM',
    appId: '1:1067534751605:ios:f9b27613fd5e7bb849a53c',
    messagingSenderId: '1067534751605',
    projectId: 'university-app-1d194',
    databaseURL: 'https://university-app-1d194-default-rtdb.europe-west1.firebasedatabase.app',
    storageBucket: 'university-app-1d194.appspot.com',
    iosBundleId: 'com.example.educationApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyC9joOA3Br9veTB6Yunmd0T9eVPJGmCuaM',
    appId: '1:1067534751605:web:e83ff24f517a079f49a53c',
    messagingSenderId: '1067534751605',
    projectId: 'university-app-1d194',
    authDomain: 'university-app-1d194.firebaseapp.com',
    databaseURL: 'https://university-app-1d194-default-rtdb.europe-west1.firebasedatabase.app',
    storageBucket: 'university-app-1d194.appspot.com',
    measurementId: 'G-EWHFFWTJQ0',
  );

}