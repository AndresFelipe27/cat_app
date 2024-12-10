import 'package:genq/genq.dart';

part 'cat_breed_response.genq.dart';

@Genq(json: true)
class CatBreedResponse with _$CatBreedResponse {
  factory CatBreedResponse({
    required String id,
    @JsonKey(name: 'name', defaultValue: null) String? name,
    @JsonKey(name: 'origin', defaultValue: null) String? origin,
    @JsonKey(name: 'life_span', defaultValue: null) String? lifeSpan,
    @JsonKey(name: 'intelligence', defaultValue: null) int? intelligence,
    @JsonKey(name: 'description', defaultValue: null) String? description,
    @JsonKey(name: 'wikipedia_url', defaultValue: null) String? wikipediaUrl,
    @JsonKey(name: 'reference_image_id', defaultValue: null) String? referenceImageId,
  }) = _CatBreedResponse;
}
