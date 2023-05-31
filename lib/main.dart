

import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:localdb/home_page.dart';
import 'package:localdb/provider/home_provider.dart';

import 'package:provider/provider.dart';

void main() async {
  await Hive.initFlutter();
  runApp(MultiProvider(providers: [ChangeNotifierProvider(
    create: ((context) =>HomeProvider()) )],
    child: const MyApp())
    
    );
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}