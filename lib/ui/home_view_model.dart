import 'dart:async';

import 'package:image_search_clean_arch/data/api.dart';

import '../model/photo.dart';

class HomeViewModel {
  final PixabayApi api;

  HomeViewModel(this.api);

  List<Photo> _photos = [];

  final _photoStreamController = StreamController<List<Photo>>()..add([]);
  
  Stream<List<Photo>> get photoStream => _photoStreamController.stream;
  Future<void> fetch(String query) async {
    final result = await api.fetch(query);
    _photoStreamController.add(result);
  }
}
