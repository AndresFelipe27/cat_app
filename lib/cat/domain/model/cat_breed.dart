import 'package:cat_app/cat/domain/model/cat_breed_image.dart';
import 'package:genq/genq.dart';

part 'cat_breed.genq.dart';

@genq
class CatBreed with _$CatBreed {
  factory CatBreed({
    required String id,
    required List<CatBreedImage> images,
    String? name,
    String? origin,
    String? lifeSpan,
    int? intelligence,
    String? description,
    String? wikipediaUrl,
    String? referenceImageId,
    String? referenceImageUrl,
  }) = _CatBreed;

  factory CatBreed.empty() {
    return CatBreed(id: '', images: [], referenceImageUrl: '');
  }
}
