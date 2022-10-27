import 'dart:convert';

import '../models/boarderModels/imageModel.dart';
import 'globals.dart';

class ImageDbService {
  static List<ImageModel> getImages(List<dynamic> imagesBody) {
    List<ImageModel> images = [];

    if (imagesBody.isEmpty) {
      //default image
      images.add(ImageModel(id: -1, url: defaultImage, boardingPlace: -1));
      return images;
    }

    for (var element in imagesBody) {
      images.add(ImageModel(
          id: element['id'],
          url: element['url'],
          boardingPlace: element['boardingPlace']));
    }
    return images;
  }
}
