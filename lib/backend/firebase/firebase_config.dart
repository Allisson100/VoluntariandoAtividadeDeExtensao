import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBHLbae9sNhYVHpC8l-BDknMTWia99tx_I",
            authDomain: "ong---voluntario.firebaseapp.com",
            projectId: "ong---voluntario",
            storageBucket: "ong---voluntario.appspot.com",
            messagingSenderId: "184565750636",
            appId: "1:184565750636:web:7abde66c38a62acf70f149"));
  } else {
    await Firebase.initializeApp();
  }
}
