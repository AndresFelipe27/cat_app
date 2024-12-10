import 'package:cat_app/cat/domain/model/cat_breed_image.dart';

import '../model/cat_breed.dart';

abstract class CatBreedRepository {
  Future<List<CatBreed>> fetchBreeds();
  Future<List<CatBreedImage>> fetchBreedImages(String breedId);
  Future<void> voteBreed(bool vote, String referenceImageId);
}
