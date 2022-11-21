import 'package:flutter/material.dart';
import 'package:image_search_clean_arch/data/api.dart';

class PhotoProvider extends InheritedWidget {
  const PhotoProvider({
    Key? key,
    required this.api,
    required Widget child,
    }) : super(key: key, child: child);
  final PixabayApi api;

  static PhotoProvider of(BuildContext context) {
    final PhotoProvider? result =
        context.dependOnInheritedWidgetOfExactType<PhotoProvider>();
    assert(result != null, 'no');
    return result!;
  }

  @override
  bool updateShouldNotify(PhotoProvider oldWidget) {
    return oldWidget.api != api;
  }
}
