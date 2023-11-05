import 'bloc/product_detail_bloc.dart';
import 'models/product_detail_model.dart';
import 'package:flutter/material.dart';
import 'package:student_hub_app/core/app_export.dart';
import 'package:student_hub_app/widgets/app_bar/appbar_iconbutton_1.dart';
import 'package:student_hub_app/widgets/app_bar/appbar_subtitle.dart';
import 'package:student_hub_app/widgets/app_bar/custom_app_bar.dart';
import 'package:student_hub_app/widgets/custom_elevated_button.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<ProductDetailBloc>(
        create: (context) => ProductDetailBloc(
            ProductDetailState(productDetailModelObj: ProductDetailModel()))
          ..add(ProductDetailInitialEvent()),
        child: ProductDetailScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<ProductDetailBloc, ProductDetailState>(
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
                  title: AppbarSubtitle(text: "lbl_management_it".tr)),
              body: Container(
                  width: double.maxFinite,
                  padding: EdgeInsets.symmetric(vertical: 8.v),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgIllustration257x373,
                            height: 257.v,
                            width: 373.h,
                            margin: EdgeInsets.only(left: 2.h)),
                        Padding(
                            padding: EdgeInsets.only(left: 16.h, top: 41.v),
                            child: Text("msg_about_the_course".tr,
                                style: theme.textTheme.headlineSmall)),
                        Align(
                            alignment: Alignment.center,
                            child: Container(
                                width: 347.h,
                                margin: EdgeInsets.only(
                                    left: 16.h, top: 7.v, right: 12.h),
                                child: Text("msg_you_can_launch_a".tr,
                                    maxLines: 5,
                                    overflow: TextOverflow.ellipsis,
                                    style: CustomTextStyles
                                        .bodyMediumSecondaryContainer
                                        .copyWith(height: 1.50)))),
                        Padding(
                            padding: EdgeInsets.only(left: 16.h, top: 24.v),
                            child: Text("lbl_duration".tr,
                                style: theme.textTheme.titleLarge)),
                        Padding(
                            padding: EdgeInsets.only(left: 16.h, top: 6.v),
                            child: Text("lbl_1_h_30_min".tr,
                                style: CustomTextStyles
                                    .bodyMediumSecondaryContainer)),
                        CustomElevatedButton(
                            text: "lbl_check_in".tr,
                            margin: EdgeInsets.fromLTRB(35.h, 80.v, 31.h, 5.v),
                            alignment: Alignment.center)
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
