import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class KidModel {
  String? name;
  String? birth;
  String? gestationalAge;
  String? gender;

  
  KidModel({
    this.name,
    this.birth,
    this.gestationalAge,
    this.gender,
  });

  setName(String value) => name = value;
  setBirth(String value) => birth = value;
  setGesAge(String value) => gestationalAge = value;
  setGender(String value) => gender = value;

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'birth': birth,
      'gestationalAge': gestationalAge,
      'gender': gender,
    };
  }

  factory KidModel.fromMap(Map<String, dynamic> map) {
    return KidModel(
      name: map['name'] != null ? map['name'] as String : null,
      birth: map['birth'] != null ? map['birth'] as String : null,
      gestationalAge: map['gestationalAge'] != null ? map['gestationalAge'] as String : null,
      gender: map['gender'] != null ? map['gender'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory KidModel.fromJson(String source) => KidModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
