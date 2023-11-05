import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:student_hub_app/presentation/not_saved_screen/models/not_saved_model.dart';
part 'not_saved_event.dart';
part 'not_saved_state.dart';

/// A bloc that manages the state of a NotSaved according to the event that is dispatched to it.
class NotSavedBloc extends Bloc<NotSavedEvent, NotSavedState> {
  NotSavedBloc(NotSavedState initialState) : super(initialState) {
    on<NotSavedInitialEvent>(_onInitialize);
  }

  _onInitialize(
    NotSavedInitialEvent event,
    Emitter<NotSavedState> emit,
  ) async {}
}
