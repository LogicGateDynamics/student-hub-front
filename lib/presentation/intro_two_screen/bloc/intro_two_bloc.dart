import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/slidertext_item_model.dart';
import 'package:student_hub_app/presentation/intro_two_screen/models/intro_two_model.dart';
part 'intro_two_event.dart';
part 'intro_two_state.dart';

/// A bloc that manages the state of a IntroTwo according to the event that is dispatched to it.
class IntroTwoBloc extends Bloc<IntroTwoEvent, IntroTwoState> {
  IntroTwoBloc(IntroTwoState initialState) : super(initialState) {
    on<IntroTwoInitialEvent>(_onInitialize);
  }

  List<SlidertextItemModel> fillSlidertextItemList() {
    return List.generate(1, (index) => SlidertextItemModel());
  }

  _onInitialize(
    IntroTwoInitialEvent event,
    Emitter<IntroTwoState> emit,
  ) async {
    emit(state.copyWith(
      sliderIndex: 0,
    ));
    emit(state.copyWith(
        introTwoModelObj: state.introTwoModelObj?.copyWith(
      slidertextItemList: fillSlidertextItemList(),
    )));
  }
}
