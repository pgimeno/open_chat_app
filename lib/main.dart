import 'package:chat_app/screens/auth.dart';
import 'package:chat_app/screens/chat.dart';
import 'package:chat_app/screens/splash.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    //dark theme
    final ThemeData customDarkTheme = ThemeData.dark().copyWith(
      primaryColor: Color(0xFFBFACB5),
      textSelectionTheme: TextSelectionThemeData(cursorColor: Colors.white),
      cardColor: Color(0xFF542E71),
      inputDecorationTheme: InputDecorationTheme(focusColor:Colors.red,focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.deepPurpleAccent))),
      textButtonTheme: TextButtonThemeData(
        style: ButtonStyle(
          foregroundColor: MaterialStateProperty.all(Colors.white)
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Color(0xFF16001E)))),
      textTheme: TextTheme(
          bodyMedium: TextStyle(color: Colors.white),
          bodySmall: TextStyle(color: Colors.white),
          bodyLarge: TextStyle(color: Colors.white),
        labelMedium: TextStyle(color: Colors.white),
        labelSmall: TextStyle(color: Colors.white),
        labelLarge: TextStyle(color: Colors.white)
      ),
      scaffoldBackgroundColor: Color(0xFF805D93),
      buttonTheme: ButtonThemeData(buttonColor: Color(0xFF444554)),
      appBarTheme: AppBarTheme(
        backgroundColor: Color(0xFF16001E),
        iconTheme: IconThemeData(
            color: Colors.white), // Change the icon color
      ),
    );

    return MaterialApp(
      title: 'OpenChat',
      // Use the custom dark theme
      theme: customDarkTheme,
      home: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (ctx, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const SplashScreen();
          }

          if (snapshot.hasData) {
            return const ChatScreen();
          }
          return const AuthScreen();
        },
      ),
    );
  }
}
