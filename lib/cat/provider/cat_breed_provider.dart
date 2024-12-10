import 'package:cat_app/cat/data/mapper/cat_breed_images_list_mapper.dart';
import 'package:cat_app/cat/ui/breed/model/cat_breed_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../data/mapper/cat_breed_list_mapper.dart';
import '../data/repository/cat_breed_repository_impl.dart';
import '../domain/repository/cat_breed_repository.dart';
import '../ui/breed/controller/cat_breed_controller.dart';

final catBreedListMapperProvider =
    Provider<CatBreedListMapper>((ref) => CatBreedListMapper());

final catBreedImageListMapperProvider =
    Provider<CatBreedImagesListMapper>((ref) => CatBreedImagesListMapper());

final catBreedRepositoryProvider = Provider<CatBreedRepository>(
  (ref) {
    final catBreedListMapper = ref.watch(catBreedListMapperProvider);
    final catBreedImageListMapper = ref.watch(catBreedImageListMapperProvider);

    return CatBreedRepositoryImpl(
      catBreedListMapper: catBreedListMapper,
      catBreedImageListMapper: catBreedImageListMapper,
    );
  },
);

final catBreedStateProvider =
    StateNotifierProvider<CatBreedStateController, CatBreedState>(
        (ref) {
  final catBreedRepository = ref.watch(catBreedRepositoryProvider);

  return CatBreedStateController(
    catBreedRepository,
    CatBreedState.empty(),
  );
});
