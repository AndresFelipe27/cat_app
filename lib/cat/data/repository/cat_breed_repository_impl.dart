import 'dart:convert';

import 'package:cat_app/cat/data/mapper/cat_breed_images_list_mapper.dart';
import 'package:cat_app/cat/data/model/cat_breed_images_list/cat_breed_image_response.dart';
import 'package:cat_app/cat/data/model/cat_breed_list/cat_breed_response.dart';
import 'package:cat_app/cat/domain/model/cat_breed_image.dart';
import 'package:http/http.dart' as http;

import '../../domain/model/cat_breed.dart';
import '../../domain/repository/cat_breed_repository.dart';
import '../mapper/cat_breed_list_mapper.dart';

class CatBreedRepositoryImpl extends CatBreedRepository {
  CatBreedRepositoryImpl({
    required CatBreedListMapper catBreedListMapper,
    required CatBreedImagesListMapper catBreedImageListMapper,
  }) : _catBreedListMapper = catBreedListMapper,
       _catBreedImageListMapper = catBreedImageListMapper;

  final CatBreedListMapper _catBreedListMapper;
  final CatBreedImagesListMapper _catBreedImageListMapper;

  final _baseUrl = 'https://api.thecatapi.com/v1';
  final Map<String, String> headers = {
    'Content-Type': 'application/json',
    'x-api-key': 'live_JBT0Ah0Nt12iyl2IpjQVLDWjcLk0GQwf4zI9wBMfmfejKmcC31mOJp4yJz5TsOUP',
  };

  @override
  Future<List<CatBreed>> fetchBreeds() async {
    final url = Uri.parse('$_baseUrl/breeds');
    final response = await http.get(url, headers: headers);

    if (response.statusCode == 200) {
      final jsonData = json.decode(response.body) as List;
      final catBreedListResponse = jsonData.map((item) => $CatBreedResponseFromJson(item)).toList();
      return _catBreedListMapper.map(catBreedListResponse);
    } else {
      throw Exception('Unexpected error with status ${response.statusCode} because of ${response.reasonPhrase}');
    }
  }

  @override
  Future<List<CatBreedImage>> fetchBreedImages(String breedId) async {
    final url = Uri.parse(
        '$_baseUrl/images/search'
        '?limit=10'
        '&breed_ids=$breedId'
      );
    final response = await http.get(url, headers: headers);

    if (response.statusCode == 200) {
      final jsonData = json.decode(response.body) as List;
      final catBreedImageList = jsonData.map((item) => $CatBreedImageResponseFromJson(item)).toList();
      return _catBreedImageListMapper.map(catBreedImageList);
    } else {
      throw Exception('Unexpected error with status ${response.statusCode} because of ${response.reasonPhrase}');
    }
  }
  
  @override
  Future<void> voteBreed(bool vote, String referenceImageId) async {
    final body = json.encode({
      'image_id': referenceImageId,
      'sub_id': 'demo-474a90',
      'value': vote ? 1 : -1,
    });

    final url = Uri.parse('$_baseUrl/votes');
    final response = await http.post(url, headers: headers, body: body);

    if (response.statusCode < 200 && response.statusCode >= 300) {
      throw Exception('Unexpected error with status ${response.statusCode} because of ${response.reasonPhrase}');
    }
  }
}
