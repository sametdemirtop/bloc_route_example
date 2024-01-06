import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'color_event.dart';
import 'color_state.dart';

class ColorBloc extends Bloc<ColorEvent, ColorState> {
  ColorBloc() : super(const ColorInitial(initialColor: Colors.white)) {
    on<ApplyWhiteColor>((event, emit) {
      emit(const MyColorState(colorValue: Colors.white));
    });
    on<ApplyRedColor>((event, emit) {
      emit(const MyColorState(colorValue: Colors.red));
    });
  }
}
