import 'dart:ui';

import 'package:flutter/foundation.dart';

@immutable
abstract class ColorState {
  final Color color;
  const ColorState({required this.color});
}
class ColorInitial extends ColorState {
  const ColorInitial({required Color initialColor}) : super(color: initialColor);
}

class MyColorState extends ColorState {
  const MyColorState({required Color colorValue}) : super(color: colorValue);
}