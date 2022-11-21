import 'package:flutter/material.dart';
import 'package:image_search_clean_arch/ui/home_view_model.dart';

class PhotoProvider extends InheritedWidget {
  const PhotoProvider({
    Key? key,
    required this.viewModel,
    required Widget child,
  }) : super(key: key, child: child);
  final HomeViewModel viewModel;

  static PhotoProvider of(BuildContext context) {
    final PhotoProvider? result =
        context.dependOnInheritedWidgetOfExactType<PhotoProvider>();
    assert(result != null, 'no');
    return result!;
  }

  @override
  bool updateShouldNotify(PhotoProvider oldWidget) {
    return true;
  }
}
