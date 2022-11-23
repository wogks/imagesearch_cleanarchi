import 'package:image_search_clean_arch/domain/model/photo.dart';
import 'package:image_search_clean_arch/domain/repository/photo_api_repository.dart';
import '../data_source/pixabay_api.dart';

class PhotoApiRepositoryImple implements PhotoApiRepository {
  final PixabayApi api;

  PhotoApiRepositoryImple(this.api);
  @override
  Future<List<Photo>> fetch(String query) async {
    final result = await api.fetch(query);
    return result.map((e) => Photo.fromJson(e)).toList();
  }
}
