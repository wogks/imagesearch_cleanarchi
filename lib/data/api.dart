import 'package:http/http.dart' as http;

import 'dart:convert';

import '../model/photo.dart';

class PixabayApi {
  Future<List<Photo>> fetch(String query) async {
    final response = await http.get(Uri.parse(
        'https://pixabay.com/api/?key=28871499-c75df118d01f09e96aaf02d60&q=$query&image_type=photo&pretty=true'));

    Map<String, dynamic> jsonResponse = jsonDecode(response.body);
    Iterable hits = jsonResponse['hits'];
    return hits.map((e) => Photo.fromJson(e)).toList();
  }
}
