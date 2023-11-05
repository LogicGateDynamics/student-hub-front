// ignore_for_file: must_be_immutable

part of 'not_saved_bloc.dart';

/// Represents the state of NotSaved in the application.
class NotSavedState extends Equatable {
  NotSavedState({this.notSavedModelObj});

  NotSavedModel? notSavedModelObj;

  @override
  List<Object?> get props => [
        notSavedModelObj,
      ];
  NotSavedState copyWith({NotSavedModel? notSavedModelObj}) {
    return NotSavedState(
      notSavedModelObj: notSavedModelObj ?? this.notSavedModelObj,
    );
  }
}
