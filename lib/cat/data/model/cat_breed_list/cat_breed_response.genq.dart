part of 'cat_breed_response.dart';

mixin _$CatBreedResponse {
  String get id => throw UnimplementedError();
  String? get name => throw UnimplementedError();
  String? get origin => throw UnimplementedError();
  String? get lifeSpan => throw UnimplementedError();
  int? get intelligence => throw UnimplementedError();
  String? get description => throw UnimplementedError();
  String? get wikipediaUrl => throw UnimplementedError();
  String? get referenceImageId => throw UnimplementedError();

  $CatBreedResponseCopyWith get copyWith => throw UnimplementedError();
}

class _CatBreedResponse implements CatBreedResponse {
  @override
  final String id;

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

  _CatBreedResponse({
    required this.id,
    this.name,
    this.origin,
    this.lifeSpan,
    this.intelligence,
    this.description,
    this.wikipediaUrl,
    this.referenceImageId,
  });

  @override
  $CatBreedResponseCopyWith get copyWith => _$CatBreedResponseCopyWithImpl(this);

  @override
  String toString() {
    return "CatBreedResponse(id: $id, name: $name, origin: $origin, lifeSpan: $lifeSpan, intelligence: $intelligence, description: $description, wikipediaUrl: $wikipediaUrl, referenceImageId: $referenceImageId)";
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! CatBreedResponse) return false;
    if (!identical(other.id, id) && other.id != id) return false;
    if (!identical(other.name, name) && other.name != name) return false;
    if (!identical(other.origin, origin) && other.origin != origin) return false;
    if (!identical(other.lifeSpan, lifeSpan) && other.lifeSpan != lifeSpan) return false;
    if (!identical(other.intelligence, intelligence) && other.intelligence != intelligence) return false;
    if (!identical(other.description, description) && other.description != description) return false;
    if (!identical(other.wikipediaUrl, wikipediaUrl) && other.wikipediaUrl != wikipediaUrl) return false;
    if (!identical(other.referenceImageId, referenceImageId) && other.referenceImageId != referenceImageId) return false;
    return true;
  }

  @override
  int get hashCode {
    return Object.hash(
      runtimeType,
      id,
      name,
      origin,
      lifeSpan,
      intelligence,
      description,
      wikipediaUrl,
      referenceImageId,
    );
  }
}

abstract class $CatBreedResponseCopyWith {
  CatBreedResponse call({
    String id,
    String? name,
    String? origin,
    String? lifeSpan,
    int? intelligence,
    String? description,
    String? wikipediaUrl,
    String? referenceImageId,
  });
}

class _$CatBreedResponseCopyWithImpl implements $CatBreedResponseCopyWith {
  final _$CatBreedResponse __value;

  _$CatBreedResponseCopyWithImpl(this.__value);

  @override
  CatBreedResponse call({
    Object? id = genq,
    Object? name = genq,
    Object? origin = genq,
    Object? lifeSpan = genq,
    Object? intelligence = genq,
    Object? description = genq,
    Object? wikipediaUrl = genq,
    Object? referenceImageId = genq,
  }) {
    return CatBreedResponse(
      id: id == genq ? __value.id : id as String,
      name: name == genq ? __value.name : name as String?,
      origin: origin == genq ? __value.origin : origin as String?,
      lifeSpan: lifeSpan == genq ? __value.lifeSpan : lifeSpan as String?,
      intelligence: intelligence == genq ? __value.intelligence : intelligence as int?,
      description: description == genq ? __value.description : description as String?,
      wikipediaUrl: wikipediaUrl == genq ? __value.wikipediaUrl : wikipediaUrl as String?,
      referenceImageId: referenceImageId == genq ? __value.referenceImageId : referenceImageId as String?,
    );
  }
}

CatBreedResponse $CatBreedResponseFromJson(Map<String, dynamic> json) {
  return CatBreedResponse(
    id: json['id'] as String,
    name: json['name'] == null ? null : json['name'] as String?,
    origin: json['origin'] == null ? null : json['origin'] as String?,
    lifeSpan: json['life_span'] == null ? null : json['life_span'] as String?,
    intelligence: json['intelligence'] == null ? null : (json['intelligence'] as num).toInt(),
    description: json['description'] == null ? null : json['description'] as String?,
    wikipediaUrl: json['wikipedia_url'] == null ? null : json['wikipedia_url'] as String?,
    referenceImageId: json['reference_image_id'] == null ? null : json['reference_image_id'] as String?,
  );
}

Map<String, dynamic> $CatBreedResponseToJson(CatBreedResponse obj) {
  return {
    'id': obj.id,
    'name': obj.name == null ? null : obj.name!,
    'origin': obj.origin == null ? null : obj.origin!,
    'life_span': obj.lifeSpan == null ? null : obj.lifeSpan!,
    'intelligence': obj.intelligence == null ? null : obj.intelligence!,
    'description': obj.description == null ? null : obj.description!,
    'wikipedia_url': obj.wikipediaUrl == null ? null : obj.wikipediaUrl!,
    'reference_image_id': obj.referenceImageId == null ? null : obj.referenceImageId!,
  };
}