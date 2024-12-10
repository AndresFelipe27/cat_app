import 'package:genq/genq.dart';

part 'cat_breed_image_response.genq.dart';

@Genq(json: true)
class CatBreedImageResponse with _$CatBreedImageResponse {
  factory CatBreedImageResponse({
    required String id,
    @JsonKey(defaultValue: '') required String url,
  }) = _CatBreedImageResponse;
}
