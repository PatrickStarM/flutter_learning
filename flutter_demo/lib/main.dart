import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'bottom/index.dart';
import 'common/routes.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
  //透明沉浸式状态栏
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate
      ],
      supportedLocales: const [
        Locale('zh', 'CH'),
        Locale('en', 'US'),
      ],
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      routes: routes,
      initialRoute: '/',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Index(),
    );
  }
}
