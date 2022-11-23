import 'package:flutter/material.dart';
import 'package:image_search_clean_arch/data/data_source/pixabay_api.dart';
import 'package:image_search_clean_arch/data/repository_imple.dart/photo_repository_imple.dart';
import 'package:image_search_clean_arch/presentation/home/home_screen.dart';
import 'package:image_search_clean_arch/presentation/home/home_view_model.dart';
import 'package:http/http.dart' as http;
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
      home: MultiProvider(providers: [
        ChangeNotifierProvider(
          create: (_) => HomeViewModel(
            PhotoApiRepositoryImple(PixabayApi(http.Client())),
          ),
        ),
      ], child: const HomeScreen()),
    );
  }
}
