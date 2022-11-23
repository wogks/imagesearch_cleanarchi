import 'dart:convert';
import 'package:http/http.dart' as http;

class PixabayApi {
  final http.Client client;

  PixabayApi(this.client);

  Future<Iterable> fetch(String query) async {
  final response = await client.get(Uri.parse(
        'https://pixabay.com/api/?key=28871499-c75df118d01f09e96aaf02d60&q=$query&image_type=photo&pretty=true'));

    Map<String, dynamic> jsonResponse = jsonDecode(response.body);
    List<Iterable> hits = jsonResponse['hits'];
    return hits;
  }
}