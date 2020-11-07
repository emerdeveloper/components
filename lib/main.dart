import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'package:components/routes/routes.dart';

import 'package:components/src/alert_page.dart';

void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Components",
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [
      // ... app-specific localization delegate[s] here
      GlobalMaterialLocalizations.delegate,
      GlobalWidgetsLocalizations.delegate,
      GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('en', 'EN'), // English
        const Locale('es', 'ES'), // Spanish, Spaña
        // ... other locales the app supports
        ],
      //home: HomePageTemp(),
      initialRoute: '/',
      routes: getAplicationRoutes(),
      onGenerateRoute: (RouteSettings settings) {
          print(' page Name ${settings.name}');
          return MaterialPageRoute(builder: (BuildContext context) => AlertPage());
      },
    );
  }
}