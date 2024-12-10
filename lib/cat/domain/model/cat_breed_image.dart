import 'package:genq/genq.dart';

part 'cat_breed_image.genq.dart';

@genq
class CatBreedImage with _$CatBreedImage {
  factory CatBreedImage({
    required String id,
    String? url,
  }) = _CatBreedImage;
}
