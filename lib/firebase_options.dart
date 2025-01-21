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
    apiKey: 'AIzaSyBZueEGFQqRz9lVjz8XbsM8MTBzgmRzYt4',
    appId: '1:990207693576:web:6d8cbd6a30c2e7de9452bd',
    messagingSenderId: '990207693576',
    projectId: 'fir-project-8bb0f',
    authDomain: 'fir-project-8bb0f.firebaseapp.com',
    databaseURL: 'https://fir-project-8bb0f-default-rtdb.firebaseio.com',
    storageBucket: 'fir-project-8bb0f.firebasestorage.app',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCwmHziu7CSnLHoJgvHm0OLpJfMVpCbGZ8',
    appId: '1:990207693576:android:d2d46a638c3a1e439452bd',
    messagingSenderId: '990207693576',
    projectId: 'fir-project-8bb0f',
    databaseURL: 'https://fir-project-8bb0f-default-rtdb.firebaseio.com',
    storageBucket: 'fir-project-8bb0f.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCMg8SwEJ6vpDB_cxMNVSCVaLXNc01fT9Q',
    appId: '1:990207693576:ios:506fd9fbfdefe9479452bd',
    messagingSenderId: '990207693576',
    projectId: 'fir-project-8bb0f',
    databaseURL: 'https://fir-project-8bb0f-default-rtdb.firebaseio.com',
    storageBucket: 'fir-project-8bb0f.firebasestorage.app',
    iosBundleId: 'com.example.firstProject',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCMg8SwEJ6vpDB_cxMNVSCVaLXNc01fT9Q',
    appId: '1:990207693576:ios:506fd9fbfdefe9479452bd',
    messagingSenderId: '990207693576',
    projectId: 'fir-project-8bb0f',
    databaseURL: 'https://fir-project-8bb0f-default-rtdb.firebaseio.com',
    storageBucket: 'fir-project-8bb0f.firebasestorage.app',
    iosBundleId: 'com.example.firstProject',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAZhY28JpJBdMo_TonFgziPC-RW3irr4V0',
    appId: '1:990207693576:web:25a275c8039760a49452bd',
    messagingSenderId: '990207693576',
    projectId: 'fir-project-8bb0f',
    authDomain: 'fir-project-8bb0f.firebaseapp.com',
    databaseURL: 'https://fir-project-8bb0f-default-rtdb.firebaseio.com',
    storageBucket: 'fir-project-8bb0f.firebasestorage.app',
  );
}
