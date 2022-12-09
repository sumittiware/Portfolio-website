import 'package:flutter/foundation.dart';

class ImagesUtils {
  static getActualPath(String path) {
    if (kDebugMode) {
      return path;
    }
    return 'assets/$path';
  }
}
