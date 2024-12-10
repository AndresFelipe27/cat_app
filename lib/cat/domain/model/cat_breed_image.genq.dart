part of 'cat_breed_image.dart';

mixin _$CatBreedImage {
  String get id => throw UnimplementedError();
  String? get url => throw UnimplementedError();

  $CatBreedImageCopyWith get copyWith => throw UnimplementedError();
}

class _CatBreedImage implements CatBreedImage {
  @override
  final String id;

  @override
  final String? url;

  _CatBreedImage({
    required this.id,
    this.url,
  });

  @override
  $CatBreedImageCopyWith get copyWith => _$CatBreedImageCopyWithImpl(this);

  @override
  String toString() {
    return "CatBreedImage(id: $id, url: $url)";
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! CatBreedImage) return false;
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

abstract class $CatBreedImageCopyWith {
  CatBreedImage call({
    String id,
    String? url,
  });
}

class _$CatBreedImageCopyWithImpl implements $CatBreedImageCopyWith {
  final _$CatBreedImage __value;

  _$CatBreedImageCopyWithImpl(this.__value);

  @override
  CatBreedImage call({
    Object? id = genq,
    Object? url = genq,
  }) {
    return CatBreedImage(
      id: id == genq ? __value.id : id as String,
      url: url == genq ? __value.url : url as String?,
    );
  }
}