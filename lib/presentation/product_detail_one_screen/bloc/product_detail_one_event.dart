// ignore_for_file: must_be_immutable

part of 'product_detail_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ProductDetailOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ProductDetailOneEvent extends Equatable {}

/// Event that is dispatched when the ProductDetailOne widget is first created.
class ProductDetailOneInitialEvent extends ProductDetailOneEvent {
  @override
  List<Object?> get props => [];
}
