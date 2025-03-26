import 'package:exp_ui/data/notifier.dart';
import 'package:exp_ui/views/widget_tree.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: darkMode,
      builder: (context, value, child) {
        return MaterialApp(
          title: 'Flutter Demo',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(brightness: value ? Brightness.dark : Brightness.light),
          home: WidgetTree(),
        );
      },
    );
  }
}
