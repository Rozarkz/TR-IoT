import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

import 'screens/splash.dart';
import 'screens/home.dart';
import 'firebase_options.dart';
import 'screens/auth.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Oximeter App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.lightGreen,
          brightness: Brightness.dark,
        ),
      ),
      // .copyWith(
      //   useMaterial3: true,
      //   colorScheme:
      //       ColorScheme.fromSeed(seedColor: Color.fromARGB(95, 39, 59, 62)),
      // );
      home: StreamBuilder(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (ctx, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const SplashScreen();
            }

            if (snapshot.hasData) {
              return const VitalDataScreen();
            }

            return const AuthScreen();
          }),
      debugShowCheckedModeBanner: false,
    );
  }
}
