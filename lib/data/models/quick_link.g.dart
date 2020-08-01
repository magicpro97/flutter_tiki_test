// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quick_link.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

QuickLink _$QuickLinkFromJson(Map<String, dynamic> json) {
  return QuickLink(
    title: json['title'] as String,
    content: json['content'] as String,
    url: json['url'] as String,
    authentication: json['authentication'] as bool,
    webUrl: json['web_url'] as String,
    imageUrl: json['image_url'] as String,
  );
}

Map<String, dynamic> _$QuickLinkToJson(QuickLink instance) => <String, dynamic>{
      'title': instance.title,
      'content': instance.content,
      'url': instance.url,
      'authentication': instance.authentication,
      'web_url': instance.webUrl,
      'image_url': instance.imageUrl,
    };
