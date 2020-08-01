// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'banner.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Banner _$BannerFromJson(Map<String, dynamic> json) {
  return Banner(
    id: json['id'] as int,
    title: json['title'] as String,
    content: json['content'] as String,
    url: json['url'] as String,
    imageUrl: json['image_url'] as String,
    thumbnailUrl: json['thumbnail_url'] as String,
    mobileUrl: json['mobile_url'] as String,
    ratio: (json['ratio'] as num)?.toDouble(),
  );
}

Map<String, dynamic> _$BannerToJson(Banner instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'content': instance.content,
      'url': instance.url,
      'image_url': instance.imageUrl,
      'thumbnail_url': instance.thumbnailUrl,
      'mobile_url': instance.mobileUrl,
      'ratio': instance.ratio,
    };
