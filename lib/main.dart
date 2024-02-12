import 'package:flutter/material.dart';
import 'package:reface/features/splash/screen/splash_screen.dart';

Future<void> main() async {
  //widget binding ensures that the app is ready to run and the widgets are ready to be rendered on the screen before the app starts running
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Reface',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: SplashScreen(),
    );
  }
}
