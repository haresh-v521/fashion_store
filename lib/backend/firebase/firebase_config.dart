import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCD3vUVsBktwyjliEOoCJaGvmZGemSDs2w",
            authDomain: "culturize-5c76f.firebaseapp.com",
            projectId: "culturize-5c76f",
            storageBucket: "culturize-5c76f.appspot.com",
            messagingSenderId: "203853330417",
            appId: "1:203853330417:web:e486cdc709a440d6d5b650",
            measurementId: "G-ZNLDYLCVFP"));
  } else {
    await Firebase.initializeApp();
  }
}
