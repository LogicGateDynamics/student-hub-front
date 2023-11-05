// ignore_for_file: must_be_immutable

part of 'results_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Results widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ResultsEvent extends Equatable {}

/// Event that is dispatched when the Results widget is first created.
class ResultsInitialEvent extends ResultsEvent {
  @override
  List<Object?> get props => [];
}
