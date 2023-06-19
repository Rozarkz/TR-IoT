// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
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

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyChzoj8rsnEjWeiUeBNyzTw3-G1joZkJM8',
    appId: '1:497208742299:web:7dd203ba9349c4c6bd113e',
    messagingSenderId: '497208742299',
    projectId: 'lortbims',
    authDomain: 'lortbims.firebaseapp.com',
    databaseURL: 'https://lortbims-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'lortbims.appspot.com',
    measurementId: 'G-0Q9SGWHL82',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBCg9aqDvpxJ8Fv_q71jv5i3TpTOss6g5g',
    appId: '1:497208742299:android:48432454e9054362bd113e',
    messagingSenderId: '497208742299',
    projectId: 'lortbims',
    databaseURL: 'https://lortbims-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'lortbims.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyB2wvLjv6BPdh62jXuy1OjEwL5wa4jPERs',
    appId: '1:497208742299:ios:3768189e15fce1a8bd113e',
    messagingSenderId: '497208742299',
    projectId: 'lortbims',
    databaseURL: 'https://lortbims-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'lortbims.appspot.com',
    iosClientId: '497208742299-fj36mojfbgo8t4frm9ql8hkpepifnulp.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutter14ChatApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyB2wvLjv6BPdh62jXuy1OjEwL5wa4jPERs',
    appId: '1:497208742299:ios:3768189e15fce1a8bd113e',
    messagingSenderId: '497208742299',
    projectId: 'lortbims',
    databaseURL: 'https://lortbims-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'lortbims.appspot.com',
    iosClientId: '497208742299-fj36mojfbgo8t4frm9ql8hkpepifnulp.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutter14ChatApp',
  );
}
