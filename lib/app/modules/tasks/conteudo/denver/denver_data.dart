import 'dart:convert';

import 'package:flutter/material.dart';

// ignore_for_file: public_member_api_docs, sort_constructors_first

class DenverChartData {
  int? id;
  String? name;
  double? eixoY;
  Color? color;
  DenverChartData({
    this.id,
    this.name,
    this.eixoY,
    this.color,
  });
  

  DenverChartData copyWith({
    int? id,
    String? name,
    double? eixoY,
    Color? color,
  }) {
    return DenverChartData(
      id: id ?? this.id,
      name: name ?? this.name,
      eixoY: eixoY ?? this.eixoY,
      color: color ?? this.color,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'eixoY': eixoY,
      'color': color?.value,
    };
  }

  factory DenverChartData.fromMap(Map<String, dynamic> map) {
    return DenverChartData(
      id: map['id'] != null ? map['id'] as int : null,
      name: map['name'] != null ? map['name'] as String : null,
      eixoY: map['eixoY'] != null ? map['eixoY'] as double : null,
      color: map['color'] != null ? Color(map['color'] as int) : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory DenverChartData.fromJson(String source) => DenverChartData.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'DenverChartData(id: $id, name: $name, eixoY: $eixoY, color: $color)';
  }

  @override
  bool operator ==(covariant DenverChartData other) {
    if (identical(this, other)) return true;
  
    return 
      other.id == id &&
      other.name == name &&
      other.eixoY == eixoY &&
      other.color == color;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      name.hashCode ^
      eixoY.hashCode ^
      color.hashCode;
  }
}
