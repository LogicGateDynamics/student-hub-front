import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:student_hub_app/presentation/not_found_screen/models/not_found_model.dart';
part 'not_found_event.dart';
part 'not_found_state.dart';

/// A bloc that manages the state of a NotFound according to the event that is dispatched to it.
class NotFoundBloc extends Bloc<NotFoundEvent, NotFoundState> {
  NotFoundBloc(NotFoundState initialState) : super(initialState) {
    on<NotFoundInitialEvent>(_onInitialize);
  }

  _onInitialize(
    NotFoundInitialEvent event,
    Emitter<NotFoundState> emit,
  ) async {
    emit(state.copyWith(searchController: TextEditingController()));
  }
}
