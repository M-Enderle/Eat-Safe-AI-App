import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBkmBGu8ejxyWLBbvEPlgM1rXqpiZ3yTpI",
            authDomain: "eatsafeai.firebaseapp.com",
            projectId: "eatsafeai",
            storageBucket: "eatsafeai.firebasestorage.app",
            messagingSenderId: "310048573767",
            appId: "1:310048573767:web:d050e6ad3f1f688e80e462",
            measurementId: "G-EP27SMVSSF"));
  } else {
    await Firebase.initializeApp();
  }
}
