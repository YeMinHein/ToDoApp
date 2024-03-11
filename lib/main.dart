import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:provider/provider.dart';
import 'package:todo/pages/home_page.dart';
import 'package:todo/theme/darkmode.dart';
import 'package:todo/theme/provider_theme.dart';

void main() async {
  //intial hive
  await Hive.initFlutter();
  //open box
  var box = await Hive.openBox('toDoDb');
  runApp(ChangeNotifierProvider(
    create: (context) => ProviderThemeChange(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: homePage(),
      theme: Provider.of<ProviderThemeChange>(context).themeData,
    );
  }
}
