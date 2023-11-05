// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'slidertext1_item_model.dart';

/// This class defines the variables used in the [intro_three_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class IntroThreeModel extends Equatable {
  IntroThreeModel({this.slidertext1ItemList = const []}) {}

  List<Slidertext1ItemModel> slidertext1ItemList;

  IntroThreeModel copyWith({List<Slidertext1ItemModel>? slidertext1ItemList}) {
    return IntroThreeModel(
      slidertext1ItemList: slidertext1ItemList ?? this.slidertext1ItemList,
    );
  }

  @override
  List<Object?> get props => [slidertext1ItemList];
}
