import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyDZOgxr49yXzguy5jFLzT5A8c320rqOUTg",
            authDomain: "test-app-3029a.firebaseapp.com",
            projectId: "test-app-3029a",
            storageBucket: "test-app-3029a.appspot.com",
            messagingSenderId: "556203559179",
            appId: "1:556203559179:web:ce43bb9f22fc026742ba0e"));
  } else {
    await Firebase.initializeApp();
  }
}
