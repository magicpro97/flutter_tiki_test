import 'package:freezed_annotation/freezed_annotation.dart';

part 'banner.g.dart';

@JsonSerializable()
class Banner {
  final int id;
  final String title;
  final String content;
  final String url;

  @JsonKey(name: 'image_url')
  final String imageUrl;

  @JsonKey(name: 'thumbnail_url')
  final String thumbnailUrl;

  @JsonKey(name: 'mobile_url')
  final String mobileUrl;

  final double ratio;

  Banner({
    this.id,
    this.title,
    this.content,
    this.url,
    this.imageUrl,
    this.thumbnailUrl,
    this.mobileUrl,
    this.ratio,
  });

  factory Banner.fromJson(Map<String, dynamic> json) => _$BannerFromJson(json);

  Map<String, dynamic> toJson() => _$BannerToJson(this);
}
