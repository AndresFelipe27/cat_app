part of 'cat_breed_state.dart';

mixin _$CatBreedState {
  bool get loading => throw UnimplementedError();
  int get breedPage => throw UnimplementedError();
  List<CatBreed> get breeds => throw UnimplementedError();
  CatBreed get selectedBreed => throw UnimplementedError();
  Exception? get error => throw UnimplementedError();

  $CatBreedStateCopyWith get copyWith => throw UnimplementedError();
}

class _CatBreedState implements CatBreedState {
  @override
  final bool loading;

  @override
  final int breedPage;

  @override
  final List<CatBreed> breeds;

  @override
  final CatBreed selectedBreed;

  @override
  final Exception? error;

  _CatBreedState({
    required this.loading,
    required this.breedPage,
    required this.breeds,
    required this.selectedBreed,
    this.error,
  });

  @override
  $CatBreedStateCopyWith get copyWith => _$CatBreedStateCopyWithImpl(this);

  @override
  String toString() {
    return "CatBreedState(loading: $loading, breedPage: $breedPage, breeds: $breeds, selectedBreed: $selectedBreed, error: $error)";
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! CatBreedState) return false;
    if (!identical(other.loading, loading) && other.loading != loading) return false;
    if (!identical(other.breedPage, breedPage) && other.breedPage != breedPage) return false;
    if (!const DeepCollectionEquality().equals(other.breeds, breeds)) return false;
    if (!identical(other.selectedBreed, selectedBreed) && other.selectedBreed != selectedBreed) return false;
    if (!identical(other.error, error) && other.error != error) return false;
    return true;
  }

  @override
  int get hashCode {
    return Object.hash(
      runtimeType,
      loading,
      breedPage,
      breeds,
      selectedBreed,
      error,
    );
  }
}

abstract class $CatBreedStateCopyWith {
  CatBreedState call({
    bool loading,
    int breedPage,
    List<CatBreed> breeds,
    CatBreed selectedBreed,
    Exception? error,
  });
}

class _$CatBreedStateCopyWithImpl implements $CatBreedStateCopyWith {
  final _$CatBreedState __value;

  _$CatBreedStateCopyWithImpl(this.__value);

  @override
  CatBreedState call({
    Object? loading = genq,
    Object? breedPage = genq,
    Object? breeds = genq,
    Object? selectedBreed = genq,
    Object? error = genq,
  }) {
    return CatBreedState(
      loading: loading == genq ? __value.loading : loading as bool,
      breedPage: breedPage == genq ? __value.breedPage : breedPage as int,
      breeds: breeds == genq ? __value.breeds : breeds as List<CatBreed>,
      selectedBreed: selectedBreed == genq ? __value.selectedBreed : selectedBreed as CatBreed,
      error: error == genq ? __value.error : error as Exception?,
    );
  }
}