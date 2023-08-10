part of 'change_background_color_bloc.dart';

abstract class ChangeBackgroundColorState extends Equatable {}

class BackgroundColorChangeInitState extends ChangeBackgroundColorState {
  @override
  List<Object?> get props => [];
}

class BackgroundColorChangedState extends ChangeBackgroundColorState {
   BackgroundColorChangedState(this.color);

  final Color color;

  @override
  List<Object?> get props => [color];
}
