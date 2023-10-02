// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class CatModel {
  final String tname; // thainame
  final String ename; // eng name
  final String care; // catcare
  final String feature;
  final String image; // url
  final String land; //native land
  final String cha; //character
  CatModel({
    required this.tname,
    required this.ename,
    required this.care,
    required this.feature,
    required this.image,
    required this.land,
    required this.cha,
  });

  CatModel copyWith({
    String? tname,
    String? ename,
    String? care,
    String? feature,
    String? image,
    String? land,
    String? cha,
  }) {
    return CatModel(
      tname: tname ?? this.tname,
      ename: ename ?? this.ename,
      care: care ?? this.care,
      feature: feature ?? this.feature,
      image: image ?? this.image,
      land: land ?? this.land,
      cha: cha ?? this.cha,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'tname': tname,
      'ename': ename,
      'care': care,
      'feature': feature,
      'image': image,
      'land': land,
      'cha': cha,
    };
  }

  factory CatModel.fromMap(Map<String, dynamic> map) {
    return CatModel(
      tname: map['tname'] as String,
      ename: map['ename'] as String,
      care: map['care'] as String,
      feature: map['feature'] as String,
      image: map['image'] as String,
      land: map['land'] as String,
      cha: map['cha'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory CatModel.fromJson(String source) =>
      CatModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'CatModel(tname: $tname, ename: $ename, care: $care, feature: $feature, image: $image, land: $land, cha: $cha)';
  }

  @override
  bool operator ==(covariant CatModel other) {
    if (identical(this, other)) return true;

    return other.tname == tname &&
        other.ename == ename &&
        other.care == care &&
        other.feature == feature &&
        other.image == image &&
        other.land == land &&
        other.cha == cha;
  }

  @override
  int get hashCode {
    return tname.hashCode ^
        ename.hashCode ^
        care.hashCode ^
        feature.hashCode ^
        image.hashCode ^
        land.hashCode ^
        cha.hashCode;
  }
}
