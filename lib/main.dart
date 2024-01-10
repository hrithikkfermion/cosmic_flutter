import 'package:cosmic/homescreen.dart';
import 'package:cosmic/signin.dart';
import 'package:cosmic/splashscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MaterialApp(
    home: SplashScreen(),
    debugShowCheckedModeBanner: false,
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MyHomePage(title: "title");
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitDown,
      DeviceOrientation.portraitUp
    ]);
    return MultiProvider(
        providers: const [
          // Provider<BottomNavIndex>(create: (_) => BottomNavIndex()),
          // Provider<CounterProvider>(create: (_) => CounterProvider()),
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          home: const SignIn(),
          routes: {'/homescreen': (context) => const HomeScreen()
          },
        ));
  }
}
