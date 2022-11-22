import 'dart:async';

import 'package:flutter/material.dart';
import 'package:image_search_clean_arch/data/api.dart';

import '../model/photo.dart';

class HomeViewModel with ChangeNotifier {
  final PixabayApi api;

  HomeViewModel(this.api);

  List<Photo> _photos = [];

  List<Photo> get photos => _photos;




  Future<void> fetch(String query) async {
    final result = await api.fetch(query);
    _photos = result;
    notifyListeners();
  }
}
