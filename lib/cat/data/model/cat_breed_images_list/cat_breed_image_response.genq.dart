part of 'cat_breed_image_response.dart';

mixin _$CatBreedImageResponse {
  String get id => throw UnimplementedError();
  String get url => throw UnimplementedError();

  $CatBreedImageResponseCopyWith get copyWith => throw UnimplementedError();
}

class _CatBreedImageResponse implements CatBreedImageResponse {
  @override
  final String id;

  @override
  final String url;

  _CatBreedImageResponse({
    required this.id,
    required this.url,
  });

  @override
  $CatBreedImageResponseCopyWith get copyWith => _$CatBreedImageResponseCopyWithImpl(this);

  @override
  String toString() {
    return "CatBreedImageResponse(id: $id, url: $url)";
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! CatBreedImageResponse) return false;
    if (!identical(other.id, id) && other.id != id) return false;
    if (!identical(other.url, url) && other.url != url) return false;
    return true;
  }

  @override
  int get hashCode {
    return Object.hash(
      runtimeType,
      id,
      url,
    );
  }
}

abstract class $CatBreedImageResponseCopyWith {
  CatBreedImageResponse call({
    String id,
    String url,
  });
}

class _$CatBreedImageResponseCopyWithImpl implements $CatBreedImageResponseCopyWith {
  final _$CatBreedImageResponse __value;

  _$CatBreedImageResponseCopyWithImpl(this.__value);

  @override
  CatBreedImageResponse call({
    Object? id = genq,
    Object? url = genq,
  }) {
    return CatBreedImageResponse(
      id: id == genq ? __value.id : id as String,
      url: url == genq ? __value.url : url as String,
    );
  }
}

CatBreedImageResponse $CatBreedImageResponseFromJson(Map<String, dynamic> json) {
  return CatBreedImageResponse(
    id: json['id'] as String,
    url: json['url'] == null ? '' : json['url'] as String,
  );
}

Map<String, dynamic> $CatBreedImageResponseToJson(CatBreedImageResponse obj) {
  return {
    'id': obj.id,
    'url': obj.url,
  };
}