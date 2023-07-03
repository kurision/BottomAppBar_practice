import 'package:bottomapp_bar/view/dashboard_view.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BottomAppBar',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DashboardView(),
    );
  }
}
