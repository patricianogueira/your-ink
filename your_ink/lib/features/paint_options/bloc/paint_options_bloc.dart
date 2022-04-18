import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:your_ink/core/repositories/api_news.dart';
import 'package:your_ink/features/paint_options/bloc/paint_options_state.dart';

class PaintOptionsBloc extends Cubit<PaintOptionsState> {
  final ApiNews repository;
  PaintOptionsBloc(this.repository) : super(PaintOptionsInitial());

  Future<void> getNews() async {
    try {
      emit(PaintOptionsLoading());
      final paintOptionsList = await repository.getNews();
      emit(PaintOptionsSucess(paintOptionsList));
    } catch (e) {
      emit(PaintOptionsError());
    }
  }
}
