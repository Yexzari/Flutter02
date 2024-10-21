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
    apiKey: 'AIzaSyDS2d-RKoTWBj7oGAzkW5LdMaTD9DgIja0',
    appId: '1:179602611484:web:3266ee8322397e257c6ed9',
    messagingSenderId: '179602611484',
    projectId: 'practicainsta-ed20b',
    authDomain: 'practicainsta-ed20b.firebaseapp.com',
    storageBucket: 'practicainsta-ed20b.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCcwFxi_pwGIHmhyeflGxqu76_CkS5wNRM',
    appId: '1:179602611484:android:533895986bf203be7c6ed9',
    messagingSenderId: '179602611484',
    projectId: 'practicainsta-ed20b',
    storageBucket: 'practicainsta-ed20b.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyB8HbqhhOsHIxIn3HpuHoLzROi3TzFNndI',
    appId: '1:179602611484:ios:a9cf9389134916b77c6ed9',
    messagingSenderId: '179602611484',
    projectId: 'practicainsta-ed20b',
    storageBucket: 'practicainsta-ed20b.appspot.com',
    iosBundleId: 'com.example.flutterActividad02',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyB8HbqhhOsHIxIn3HpuHoLzROi3TzFNndI',
    appId: '1:179602611484:ios:a9cf9389134916b77c6ed9',
    messagingSenderId: '179602611484',
    projectId: 'practicainsta-ed20b',
    storageBucket: 'practicainsta-ed20b.appspot.com',
    iosBundleId: 'com.example.flutterActividad02',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDS2d-RKoTWBj7oGAzkW5LdMaTD9DgIja0',
    appId: '1:179602611484:web:7f736e1dc01b01b77c6ed9',
    messagingSenderId: '179602611484',
    projectId: 'practicainsta-ed20b',
    authDomain: 'practicainsta-ed20b.firebaseapp.com',
    storageBucket: 'practicainsta-ed20b.appspot.com',
  );
}