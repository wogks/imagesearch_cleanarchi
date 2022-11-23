import 'dart:async';

import 'package:flutter/material.dart';
import 'package:image_search_clean_arch/domain/repository/photo_api_repository.dart';

import '../../domain/model/photo.dart';



class HomeViewModel with ChangeNotifier {
  final PhotoApiRepository api;

  HomeViewModel(this.api);

  List<Photo> _photos = [];

  List<Photo> get photos => _photos;




  Future<void> fetch(String query) async {
    final result = await api.fetch(query);
    _photos = result;
    notifyListeners();
  }
}
