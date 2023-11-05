import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/slidertext1_item_model.dart';
import 'package:student_hub_app/presentation/intro_three_screen/models/intro_three_model.dart';
part 'intro_three_event.dart';
part 'intro_three_state.dart';

/// A bloc that manages the state of a IntroThree according to the event that is dispatched to it.
class IntroThreeBloc extends Bloc<IntroThreeEvent, IntroThreeState> {
  IntroThreeBloc(IntroThreeState initialState) : super(initialState) {
    on<IntroThreeInitialEvent>(_onInitialize);
  }

  List<Slidertext1ItemModel> fillSlidertext1ItemList() {
    return List.generate(1, (index) => Slidertext1ItemModel());
  }

  _onInitialize(
    IntroThreeInitialEvent event,
    Emitter<IntroThreeState> emit,
  ) async {
    emit(state.copyWith(
      sliderIndex: 0,
    ));
    emit(state.copyWith(
        introThreeModelObj: state.introThreeModelObj?.copyWith(
      slidertext1ItemList: fillSlidertext1ItemList(),
    )));
  }
}
