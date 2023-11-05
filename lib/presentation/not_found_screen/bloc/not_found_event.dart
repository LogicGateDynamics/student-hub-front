// ignore_for_file: must_be_immutable

part of 'not_found_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///NotFound widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class NotFoundEvent extends Equatable {}

/// Event that is dispatched when the NotFound widget is first created.
class NotFoundInitialEvent extends NotFoundEvent {
  @override
  List<Object?> get props => [];
}
