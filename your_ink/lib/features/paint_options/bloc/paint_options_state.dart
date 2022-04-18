import 'package:your_ink/core/models/paint_model.dart';

abstract class PaintOptionsState {}

class PaintOptionsInitial extends PaintOptionsState {}

class PaintOptionsLoading extends PaintOptionsState {}

class PaintOptionsSucess extends PaintOptionsState {
  final List<PaintModel> paintList;
  PaintOptionsSucess(this.paintList);
}

class PaintOptionsError extends PaintOptionsState {}
