// ignore_for_file: must_be_immutable

part of 'intro_two_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///IntroTwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class IntroTwoEvent extends Equatable {}

/// Event that is dispatched when the IntroTwo widget is first created.
class IntroTwoInitialEvent extends IntroTwoEvent {
  @override
  List<Object?> get props => [];
}
