part of 'cat_breed.dart';

mixin _$CatBreed {
  String get id => throw UnimplementedError();
  List<CatBreedImage> get images => throw UnimplementedError();
  String? get name => throw UnimplementedError();
  String? get origin => throw UnimplementedError();
  String? get lifeSpan => throw UnimplementedError();
  int? get intelligence => throw UnimplementedError();
  String? get description => throw UnimplementedError();
  String? get wikipediaUrl => throw UnimplementedError();
  String? get referenceImageId => throw UnimplementedError();
  String? get referenceImageUrl => throw UnimplementedError();

  $CatBreedCopyWith get copyWith => throw UnimplementedError();
}

class _CatBreed implements CatBreed {
  @override
  final String id;

  @override
  final List<CatBreedImage> images;

  @override
  final String? name;

  @override
  final String? origin;

  @override
  final String? lifeSpan;

  @override
  final int? intelligence;

  @override
  final String? description;

  @override
  final String? wikipediaUrl;

  @override
  final String? referenceImageId;

  @override
  final String? referenceImageUrl;

  _CatBreed({
    required this.id,
    required this.images,
    this.name,
    this.origin,
    this.lifeSpan,
    this.intelligence,
    this.description,
    this.wikipediaUrl,
    this.referenceImageId,
    this.referenceImageUrl,
  });

  @override
  $CatBreedCopyWith get copyWith => _$CatBreedCopyWithImpl(this);

  @override
  String toString() {
    return "CatBreed(id: $id, images: $images, name: $name, origin: $origin, lifeSpan: $lifeSpan, intelligence: $intelligence, description: $description, wikipediaUrl: $wikipediaUrl, referenceImageId: $referenceImageId, referenceImageUrl: $referenceImageUrl)";
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! CatBreed) return false;
    if (!identical(other.id, id) && other.id != id) return false;
    if (!const DeepCollectionEquality().equals(other.images, images)) return false;
    if (!identical(other.name, name) && other.name != name) return false;
    if (!identical(other.origin, origin) && other.origin != origin) return false;
    if (!identical(other.lifeSpan, lifeSpan) && other.lifeSpan != lifeSpan) return false;
    if (!identical(other.intelligence, intelligence) && other.intelligence != intelligence) return false;
    if (!identical(other.description, description) && other.description != description) return false;
    if (!identical(other.wikipediaUrl, wikipediaUrl) && other.wikipediaUrl != wikipediaUrl) return false;
    if (!identical(other.referenceImageId, referenceImageId) && other.referenceImageId != referenceImageId) return false;
    if (!identical(other.referenceImageUrl, referenceImageUrl) && other.referenceImageUrl != referenceImageUrl) return false;
    return true;
  }

  @override
  int get hashCode {
    return Object.hash(
      runtimeType,
      id,
      images,
      name,
      origin,
      lifeSpan,
      intelligence,
      description,
      wikipediaUrl,
      referenceImageId,
      referenceImageUrl,
    );
  }
}

abstract class $CatBreedCopyWith {
  CatBreed call({
    String id,
    List<CatBreedImage> images,
    String? name,
    String? origin,
    String? lifeSpan,
    int? intelligence,
    String? description,
    String? wikipediaUrl,
    String? referenceImageId,
    String? referenceImageUrl,
  });
}

class _$CatBreedCopyWithImpl implements $CatBreedCopyWith {
  final _$CatBreed __value;

  _$CatBreedCopyWithImpl(this.__value);

  @override
  CatBreed call({
    Object? id = genq,
    Object? images = genq,
    Object? name = genq,
    Object? origin = genq,
    Object? lifeSpan = genq,
    Object? intelligence = genq,
    Object? description = genq,
    Object? wikipediaUrl = genq,
    Object? referenceImageId = genq,
    Object? referenceImageUrl = genq,
  }) {
    return CatBreed(
      id: id == genq ? __value.id : id as String,
      images: images == genq ? __value.images : images as List<CatBreedImage>,
      name: name == genq ? __value.name : name as String?,
      origin: origin == genq ? __value.origin : origin as String?,
      lifeSpan: lifeSpan == genq ? __value.lifeSpan : lifeSpan as String?,
      intelligence: intelligence == genq ? __value.intelligence : intelligence as int?,
      description: description == genq ? __value.description : description as String?,
      wikipediaUrl: wikipediaUrl == genq ? __value.wikipediaUrl : wikipediaUrl as String?,
      referenceImageId: referenceImageId == genq ? __value.referenceImageId : referenceImageId as String?,
      referenceImageUrl: referenceImageUrl == genq ? __value.referenceImageUrl : referenceImageUrl as String?,
    );
  }
}