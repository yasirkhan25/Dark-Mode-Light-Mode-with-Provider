import 'package:darkmode_lightmode/splash_screen.dart';
import 'package:darkmode_lightmode/ui/screens/home_screen/theme_changer_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (_) => ThemeChangerProvider(),
          ),
        ],
        child: Builder(builder: (BuildContext context) {
          final themeChanger = Provider.of<ThemeChangerProvider>(context);

          return MaterialApp(
            title: 'Dark Mode & Light Mode',
            debugShowCheckedModeBanner: false,
            home: SplashScreen(),
            themeMode: themeChanger.themeMode,

            ///
            ///  LightMode Theme =======================>>>
            ///
            theme: ThemeData(
              brightness: Brightness.light,
              appBarTheme: AppBarTheme(
                  color: Colors.white,
                  iconTheme: IconThemeData(
                    color: Colors.teal,
                  )),
            ),

            ///
            ///  DarkMode Theme =======================>>>
            ///
            darkTheme: ThemeData(
              brightness: Brightness.dark,
              primaryColor: Colors.black38,
              appBarTheme: AppBarTheme(
                  color: Colors.white10,
                  iconTheme: IconThemeData(
                    color: Colors.teal,
                  )),
            ),
          );
        }));
  }
}
