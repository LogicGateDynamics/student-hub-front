// ignore_for_file: must_be_immutable

part of 'results_bloc.dart';

/// Represents the state of Results in the application.
class ResultsState extends Equatable {
  ResultsState({this.resultsModelObj});

  ResultsModel? resultsModelObj;

  @override
  List<Object?> get props => [
        resultsModelObj,
      ];
  ResultsState copyWith({ResultsModel? resultsModelObj}) {
    return ResultsState(
      resultsModelObj: resultsModelObj ?? this.resultsModelObj,
    );
  }
}
