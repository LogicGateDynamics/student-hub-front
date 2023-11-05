// ignore_for_file: must_be_immutable

part of 'product_detail_one_bloc.dart';

/// Represents the state of ProductDetailOne in the application.
class ProductDetailOneState extends Equatable {
  ProductDetailOneState({this.productDetailOneModelObj});

  ProductDetailOneModel? productDetailOneModelObj;

  @override
  List<Object?> get props => [
        productDetailOneModelObj,
      ];
  ProductDetailOneState copyWith(
      {ProductDetailOneModel? productDetailOneModelObj}) {
    return ProductDetailOneState(
      productDetailOneModelObj:
          productDetailOneModelObj ?? this.productDetailOneModelObj,
    );
  }
}
