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
    apiKey: 'AIzaSyB2rG3iLHm_Xdc8B2H43bo68flQM7LYnvE',
    appId: '1:749287949781:web:db74e0f56b12dd9e60295c',
    messagingSenderId: '749287949781',
    projectId: 'budgetbuddy-76b39',
    authDomain: 'budgetbuddy-76b39.firebaseapp.com',
    storageBucket: 'budgetbuddy-76b39.appspot.com',
    measurementId: 'G-6DEGELYF2Y',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAcT2izhognVcoLOL3fYcXBPJ_qYKMO-ro',
    appId: '1:749287949781:android:515d773e113a83f560295c',
    messagingSenderId: '749287949781',
    projectId: 'budgetbuddy-76b39',
    storageBucket: 'budgetbuddy-76b39.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAyFND6pKIh1499md3QXxiOA5fC4KORRPE',
    appId: '1:749287949781:ios:f41714c209bf01fe60295c',
    messagingSenderId: '749287949781',
    projectId: 'budgetbuddy-76b39',
    storageBucket: 'budgetbuddy-76b39.appspot.com',
    androidClientId: '749287949781-88gke4g1a7i59rg358oel4ulcv181gu2.apps.googleusercontent.com',
    iosClientId: '749287949781-l4mgidm7gjlvokl4o903vive7e5fcl7o.apps.googleusercontent.com',
    iosBundleId: 'com.example.budgetbuddy',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAyFND6pKIh1499md3QXxiOA5fC4KORRPE',
    appId: '1:749287949781:ios:0ceff6c5c41fa4fb60295c',
    messagingSenderId: '749287949781',
    projectId: 'budgetbuddy-76b39',
    storageBucket: 'budgetbuddy-76b39.appspot.com',
    androidClientId: '749287949781-88gke4g1a7i59rg358oel4ulcv181gu2.apps.googleusercontent.com',
    iosClientId: '749287949781-db6kk3tnur4mq7hfq3ghorbvonh2nj1q.apps.googleusercontent.com',
    iosBundleId: 'com.example.budgetbuddy.RunnerTests',
  );
}