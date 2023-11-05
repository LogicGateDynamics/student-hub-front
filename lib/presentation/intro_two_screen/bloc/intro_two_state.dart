// ignore_for_file: must_be_immutable

part of 'intro_two_bloc.dart';

/// Represents the state of IntroTwo in the application.
class IntroTwoState extends Equatable {
  IntroTwoState({
    this.sliderIndex = 0,
    this.introTwoModelObj,
  });

  IntroTwoModel? introTwoModelObj;

  int sliderIndex;

  @override
  List<Object?> get props => [
        sliderIndex,
        introTwoModelObj,
      ];
  IntroTwoState copyWith({
    int? sliderIndex,
    IntroTwoModel? introTwoModelObj,
  }) {
    return IntroTwoState(
      sliderIndex: sliderIndex ?? this.sliderIndex,
      introTwoModelObj: introTwoModelObj ?? this.introTwoModelObj,
    );
  }
}
