import 'package:flutter/material.dart';

@immutable
class HomeModel {
  final int count;

  const HomeModel({this.count = 0});

  HomeModel copyWith({
    int? count,
  }) {
    return HomeModel(count: count ?? this.count);
  }
}
