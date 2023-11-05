// ignore_for_file: must_be_immutable

part of 'intro_three_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///IntroThree widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class IntroThreeEvent extends Equatable {}

/// Event that is dispatched when the IntroThree widget is first created.
class IntroThreeInitialEvent extends IntroThreeEvent {
  @override
  List<Object?> get props => [];
}
