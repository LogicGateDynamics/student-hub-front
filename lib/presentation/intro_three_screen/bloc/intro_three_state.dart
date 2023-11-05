// ignore_for_file: must_be_immutable

part of 'intro_three_bloc.dart';

/// Represents the state of IntroThree in the application.
class IntroThreeState extends Equatable {
  IntroThreeState({
    this.sliderIndex = 0,
    this.introThreeModelObj,
  });

  IntroThreeModel? introThreeModelObj;

  int sliderIndex;

  @override
  List<Object?> get props => [
        sliderIndex,
        introThreeModelObj,
      ];
  IntroThreeState copyWith({
    int? sliderIndex,
    IntroThreeModel? introThreeModelObj,
  }) {
    return IntroThreeState(
      sliderIndex: sliderIndex ?? this.sliderIndex,
      introThreeModelObj: introThreeModelObj ?? this.introThreeModelObj,
    );
  }
}
