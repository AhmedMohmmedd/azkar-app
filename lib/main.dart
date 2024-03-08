import 'package:azkar/features/home/views/home_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// GridView(
//  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//    crossAxisCount: 2,
//  ),
//  children: [Image.asset('assets/images/6668724.gif')],
// ),
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: HomeView(),
    );
  }
}
