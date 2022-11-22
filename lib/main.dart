import 'package:flutter/material.dart';
import 'package:image_search_clean_arch/data/api.dart';
import 'package:image_search_clean_arch/ui/home_screen.dart';
import 'package:image_search_clean_arch/ui/home_view_model.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MultiProvider(
          providers: [Provider(create: (_) => HomeViewModel(PixabayApi()))],
          child: HomeScreen()),
    );
  }
}
