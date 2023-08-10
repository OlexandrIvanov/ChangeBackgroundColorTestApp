import 'dart:math';

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'change_background_color_event.dart';
part 'change_background_color_state.dart';

class ChangeBackgroundColorBloc extends Bloc<ChangeBackgroundColorEvent, ChangeBackgroundColorState> {
  ChangeBackgroundColorBloc() : super(BackgroundColorChangeInitState()) {
    on<BackgroundColorChangeEvent>(_changeBackgroundColor);
  }

  void _changeBackgroundColor(_, Emitter<ChangeBackgroundColorState> emit) {
    Color randomColor = Colors.primaries[Random().nextInt(Colors.primaries.length)];
    emit(BackgroundColorChangedState(randomColor));
  }
}
