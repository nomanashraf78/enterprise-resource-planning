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

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyA_ZSxLgvsRwkW4-rJDc42WQsD40GsiW8c',
    appId: '1:571207608383:web:9ae2051a1e2dc07db3708a',
    messagingSenderId: '571207608383',
    projectId: 'enterprise-resource-plan-f7d7b',
    authDomain: 'enterprise-resource-plan-f7d7b.firebaseapp.com',
    storageBucket: 'enterprise-resource-plan-f7d7b.appspot.com',
    measurementId: 'G-X7RVXCPT4S',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBajpHtqsT7m3ytYcp4z9ZRkEztEBDo6bk',
    appId: '1:571207608383:android:a7ce7defba6c7484b3708a',
    messagingSenderId: '571207608383',
    projectId: 'enterprise-resource-plan-f7d7b',
    storageBucket: 'enterprise-resource-plan-f7d7b.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDpL54u-5pAfFGNRpRw9gjHNrE3_wYspz4',
    appId: '1:571207608383:ios:7472630468224a52b3708a',
    messagingSenderId: '571207608383',
    projectId: 'enterprise-resource-plan-f7d7b',
    storageBucket: 'enterprise-resource-plan-f7d7b.appspot.com',
    iosClientId: '571207608383-a2sdpt9221r7gfg7qis0r2jnu24b019p.apps.googleusercontent.com',
    iosBundleId: 'com.enterpriseresourceplanning.enterpriseResourcePlanning',
  );
}
