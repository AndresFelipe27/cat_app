import 'package:genq/genq.dart';

import '../../../domain/model/cat_breed.dart';

part 'cat_breed_state.genq.dart';

@genq
class CatBreedState with _$CatBreedState {
  factory CatBreedState({
    required bool loading,
    required int breedPage,
    required List<CatBreed> breeds,
    required CatBreed selectedBreed,
    Exception? error,
  }) = _CatBreedState;

  factory CatBreedState.empty() {
    return CatBreedState(
        breeds: [],
        error: null,
        breedPage: 0,
        loading: false,
        selectedBreed: CatBreed.empty(),
    );
  }
}
