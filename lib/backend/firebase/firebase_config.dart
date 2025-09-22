import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBJQscqp--Ohriyg_2MWfxFGH5Isxfvr20",
            authDomain: "barakafarm-675d4.firebaseapp.com",
            projectId: "barakafarm-675d4",
            storageBucket: "barakafarm-675d4.appspot.com",
            messagingSenderId: "395515047188",
            appId: "1:395515047188:web:2abcfc89e1000046a5a601"));
  } else {
    await Firebase.initializeApp();
  }
}
