import 'package:cat_app/cat/data/model/cat_breed_list/cat_breed_response.dart';

import '../../domain/model/cat_breed.dart';

final class CatBreedListMapper {
  
  List<CatBreed> map(List<CatBreedResponse> input) {
    return input
        .map(
          (item) => CatBreed(
            images: [],
            id: item.id,
            name: item.name,
            origin: item.origin,
            lifeSpan: item.lifeSpan,
            description: item.description,
            wikipediaUrl: item.wikipediaUrl,
            intelligence: item.intelligence,
            referenceImageId: item.referenceImageId,
            referenceImageUrl: '$_baseImageUrl${item.referenceImageId}$_baseImageExtension',
          ),
        )
        .toList();
  }

  static const _baseImageExtension = '.jpg';
  static const _baseImageUrl = 'https://cdn2.thecatapi.com/images/';
}
