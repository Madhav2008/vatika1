import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vatika/screens/Login/LoginScreen.dart';
import 'package:vatika/screens/Theme/provider/theme_provider.dart';
import 'package:vatika/styles/app_color.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
        create: (context) => ThemeProvider(),
        builder: (context, _) {
          final themeProvider = Provider.of<ThemeProvider>(context);
          return MaterialApp(
            title: 'Vatika',
            debugShowCheckedModeBanner: false,
            themeMode: themeProvider.themeMode,
            theme: MyThemes.lightTheme,
            darkTheme: MyThemes.darkTheme,
            home: AnimatedSplashScreen(
              splash: Image.asset(
                '../assets/images/Vatika.gif',
              ),
              animationDuration: const Duration(
                milliseconds: 1000,
              ),
              nextScreen: LoginScreen(),
              splashTransition: SplashTransition.sizeTransition,
              backgroundColor: AppColor.primary1,
              duration: 3000,
              splashIconSize: 400,
              centered: true,
            ),
          );
        },
      );
}
