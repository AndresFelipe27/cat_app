import 'package:cat_app/cat/domain/model/cat_breed.dart';
import 'package:cat_app/cat/ui/breed/model/cat_breed_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../../domain/repository/cat_breed_repository.dart';

class CatBreedStateController extends StateNotifier<CatBreedState> {
  CatBreedStateController(
    this._catBreedRepository,
    super.state,
  ) : super() {
    fetchBreeds();
  }

  final CatBreedRepository _catBreedRepository;

  void fetchBreeds() async {
    try {
      state = state.copyWith(loading: true);
      final breeds = await _catBreedRepository.fetchBreeds();
      final breedImages =
          await _catBreedRepository.fetchBreedImages(breeds.first.id);
      state = state.copyWith(
        loading: false,
        breeds: breeds,
        selectedBreed: breeds.first.copyWith(images: breedImages),
      );
    } catch (exception) {
      state = state.copyWith(loading: false, error: exception as Exception);
    }
  }

  void onBreedSelected(String newSelectedBreedId) async {
    try {
      state = state.copyWith(loading: true);
      final breedImages =
          await _catBreedRepository.fetchBreedImages(newSelectedBreedId);
      state = state.copyWith(
          loading: false,
          selectedBreed: state.breeds
              .firstWhere((element) => element.id == newSelectedBreedId)
              .copyWith(images: breedImages));
    } catch (exception) {
      state = state.copyWith(loading: false, error: exception as Exception);
    }
  }

  void voteBreed(bool vote, int index) async {
    try {
      await _catBreedRepository.voteBreed(
        vote,
        getBreedsWithImageNoNull()[index].referenceImageId!,
      );
      Fluttertoast.showToast(msg: 'Vote saved successful');
    } catch (exception) {
      Fluttertoast.showToast(msg: 'Vote could not be saved');
    }
  }

  List<CatBreed> getBreedsWithImageNoNull() {
    return state.breeds.where((element) => element.referenceImageId != null).toList();
  }

  void updateBreedPage() {
    final newPage = state.breedPage + 1;
    state = state.copyWith(breedPage: newPage);
  }
}
