import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:student_hub_app/presentation/product_detail_one_screen/models/product_detail_one_model.dart';
part 'product_detail_one_event.dart';
part 'product_detail_one_state.dart';

/// A bloc that manages the state of a ProductDetailOne according to the event that is dispatched to it.
class ProductDetailOneBloc
    extends Bloc<ProductDetailOneEvent, ProductDetailOneState> {
  ProductDetailOneBloc(ProductDetailOneState initialState)
      : super(initialState) {
    on<ProductDetailOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ProductDetailOneInitialEvent event,
    Emitter<ProductDetailOneState> emit,
  ) async {}
}
