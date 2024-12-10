
import 'package:cat_app/cat/data/model/cat_breed_images_list/cat_breed_image_response.dart';
import 'package:cat_app/cat/domain/model/cat_breed_image.dart';

final class CatBreedImagesListMapper {
  List<CatBreedImage> map(List<CatBreedImageResponse> input) {
    return input.map(
      (item) => CatBreedImage(
        id: item.id,
        url: item.url,
      ),
    ).toList();
  }
}
