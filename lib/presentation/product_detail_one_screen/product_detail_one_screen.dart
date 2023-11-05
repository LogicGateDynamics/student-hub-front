import 'bloc/product_detail_one_bloc.dart';
import 'models/product_detail_one_model.dart';
import 'package:flutter/material.dart';
import 'package:student_hub_app/core/app_export.dart';
import 'package:student_hub_app/widgets/app_bar/appbar_iconbutton_1.dart';
import 'package:student_hub_app/widgets/app_bar/appbar_subtitle.dart';
import 'package:student_hub_app/widgets/app_bar/custom_app_bar.dart';
import 'package:student_hub_app/widgets/custom_elevated_button.dart';

class ProductDetailOneScreen extends StatelessWidget {
  const ProductDetailOneScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<ProductDetailOneBloc>(
        create: (context) => ProductDetailOneBloc(ProductDetailOneState(
            productDetailOneModelObj: ProductDetailOneModel()))
          ..add(ProductDetailOneInitialEvent()),
        child: ProductDetailOneScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<ProductDetailOneBloc, ProductDetailOneState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              appBar: CustomAppBar(
                  height: 63.v,
                  leadingWidth: 56.h,
                  leading: AppbarIconbutton1(
                      svgPath: ImageConstant.imgArrowleft,
                      margin:
                          EdgeInsets.only(left: 16.h, top: 8.v, bottom: 8.v),
                      onTap: () {
                        onTapArrowleftone(context);
                      }),
                  centerTitle: true,
                  title: AppbarSubtitle(text: "lbl_parking".tr)),
              body: Container(
                  width: double.maxFinite,
                  padding:
                      EdgeInsets.symmetric(horizontal: 31.h, vertical: 57.v),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            height: 53.v,
                            width: 100.h,
                            margin: EdgeInsets.only(left: 14.h, top: 7.v),
                            child: Stack(
                                alignment: Alignment.bottomCenter,
                                children: [
                                  Align(
                                      alignment: Alignment.topLeft,
                                      child: Text("lbl_available".tr,
                                          style: theme.textTheme.labelLarge)),
                                  Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Text("lbl_space_01".tr,
                                          style:
                                              theme.textTheme.headlineSmall)),
                                  Align(
                                      alignment: Alignment.center,
                                      child: SizedBox(
                                          height: 53.v,
                                          width: 100.h,
                                          child: Stack(
                                              alignment: Alignment.bottomCenter,
                                              children: [
                                                Align(
                                                    alignment:
                                                        Alignment.topLeft,
                                                    child: Text(
                                                        "lbl_available".tr,
                                                        style: theme.textTheme
                                                            .labelLarge)),
                                                Align(
                                                    alignment:
                                                        Alignment.bottomCenter,
                                                    child: Text(
                                                        "lbl_space_01".tr,
                                                        style: theme.textTheme
                                                            .headlineSmall)),
                                                Align(
                                                    alignment: Alignment.center,
                                                    child: SizedBox(
                                                        height: 53.v,
                                                        width: 100.h,
                                                        child: Stack(
                                                            alignment: Alignment
                                                                .bottomCenter,
                                                            children: [
                                                              Align(
                                                                  alignment:
                                                                      Alignment
                                                                          .topLeft,
                                                                  child: Text(
                                                                      "lbl_available"
                                                                          .tr,
                                                                      style: theme
                                                                          .textTheme
                                                                          .labelLarge)),
                                                              Align(
                                                                  alignment:
                                                                      Alignment
                                                                          .bottomCenter,
                                                                  child: Text(
                                                                      "lbl_space_01"
                                                                          .tr,
                                                                      style: theme
                                                                          .textTheme
                                                                          .headlineSmall)),
                                                              Align(
                                                                  alignment:
                                                                      Alignment
                                                                          .center,
                                                                  child: Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .min,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .start,
                                                                      children: [
                                                                        Text(
                                                                            "lbl_available"
                                                                                .tr,
                                                                            style:
                                                                                theme.textTheme.labelLarge),
                                                                        SizedBox(
                                                                            height:
                                                                                9.v),
                                                                        Text(
                                                                            "lbl_space_01"
                                                                                .tr,
                                                                            style:
                                                                                theme.textTheme.headlineSmall)
                                                                      ]))
                                                            ])))
                                              ])))
                                ])),
                        Padding(
                            padding: EdgeInsets.only(left: 14.h, top: 18.v),
                            child: Text("lbl_busy".tr,
                                style: CustomTextStyles.labelLargePrimary)),
                        Padding(
                            padding: EdgeInsets.only(left: 14.h, top: 7.v),
                            child: Text("lbl_space_02".tr,
                                style: theme.textTheme.headlineSmall)),
                        Padding(
                            padding: EdgeInsets.only(left: 14.h, top: 39.v),
                            child: Text("lbl_busy".tr,
                                style: CustomTextStyles.labelLargePrimary)),
                        Padding(
                            padding: EdgeInsets.only(left: 14.h, top: 7.v),
                            child: Text("lbl_space_03".tr,
                                style: theme.textTheme.headlineSmall)),
                        Padding(
                            padding: EdgeInsets.only(left: 14.h, top: 27.v),
                            child: Text("lbl_busy".tr,
                                style: CustomTextStyles.labelLargePrimary)),
                        Padding(
                            padding: EdgeInsets.only(left: 14.h, top: 7.v),
                            child: Text("lbl_space_04".tr,
                                style: theme.textTheme.headlineSmall)),
                        Spacer(),
                        CustomElevatedButton(
                            text: "lbl_check_in".tr,
                            margin: EdgeInsets.only(left: 4.h))
                      ]))));
    });
  }

  /// Navigates to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is
  /// used to build the navigation stack. When the action is triggered, this
  /// function uses the [NavigatorService] to navigate to the previous screen
  /// in the navigation stack.
  onTapArrowleftone(BuildContext context) {
    NavigatorService.goBack();
  }
}
