import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:coverpage/CoverScreen.dart';
import 'package:coverpage/signin.dart';

import 'firebase_options.dart';

void main() async{
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
    return MaterialApp(
      title: 'STUDYPAT',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color(0xFF297DE0)),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => CoverPage(),
      },
    );
  }
}
