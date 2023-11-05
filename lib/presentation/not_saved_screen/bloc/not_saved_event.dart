// ignore_for_file: must_be_immutable

part of 'not_saved_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///NotSaved widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class NotSavedEvent extends Equatable {}

/// Event that is dispatched when the NotSaved widget is first created.
class NotSavedInitialEvent extends NotSavedEvent {
  @override
  List<Object?> get props => [];
}
