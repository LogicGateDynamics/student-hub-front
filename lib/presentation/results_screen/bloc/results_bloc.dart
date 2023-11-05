import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:student_hub_app/presentation/results_screen/models/results_model.dart';
part 'results_event.dart';
part 'results_state.dart';

/// A bloc that manages the state of a Results according to the event that is dispatched to it.
class ResultsBloc extends Bloc<ResultsEvent, ResultsState> {
  ResultsBloc(ResultsState initialState) : super(initialState) {
    on<ResultsInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ResultsInitialEvent event,
    Emitter<ResultsState> emit,
  ) async {}
}
