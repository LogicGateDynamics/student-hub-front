// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

/// This class defines the variables used in the [results_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ResultsModel extends Equatable {
  ResultsModel() {}

  ResultsModel copyWith() {
    return ResultsModel();
  }

  @override
  List<Object?> get props => [];
}
