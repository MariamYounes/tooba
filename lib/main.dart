import 'package:flutter/material.dart';
import 'package:tooba/route_generator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'طوبى',
      // builder: EasyLoading.init(),
      debugShowCheckedModeBanner: false,
      initialRoute: '/Splash',
      onGenerateRoute: RouteGenerator.generateRoute,
      theme: ThemeData(
        primarySwatch: Colors.pink,
        fontFamily: 'Cairo',
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      // locale: _locale,
      // supportedLocales: [Locale('en', 'US'), Locale('ar', 'EG')],
      //  localizationsDelegates: [
      //    DemoLocalizations.delegate,
      //    GlobalCupertinoLocalizations.delegate,
      //    GlobalMaterialLocalizations.delegate,
      //    GlobalWidgetsLocalizations.delegate,
      //  ],
      //  localeResolutionCallback: (deviceLocale, supportedLocales) {
      //    for (var locale in supportedLocales) {
      //      if (locale.languageCode == deviceLocale.languageCode &&
      //          locale.countryCode == deviceLocale.countryCode) {
      //        return deviceLocale;
      //      }
      //    }
      //    return supportedLocales.first;
      //  },
      //  home: IntroScreen(),
    );
  }
}
