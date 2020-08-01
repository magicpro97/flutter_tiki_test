import 'package:json_annotation/json_annotation.dart';

part 'quick_link.g.dart';

@JsonSerializable()
class QuickLink {
  final String title;
  final String content;
  final String url;
  final bool authentication;

  @JsonKey(name: 'web_url')
  final String webUrl;

  @JsonKey(name: 'image_url')
  final String imageUrl;

  QuickLink({
    this.title,
    this.content,
    this.url,
    this.authentication,
    this.webUrl,
    this.imageUrl,
  });


  factory QuickLink.fromJson(Map<String, dynamic> json) => _$QuickLinkFromJson(json);

  Map<String, dynamic> toJson() => _$QuickLinkToJson(this);
}
