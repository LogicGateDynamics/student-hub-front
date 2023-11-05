import 'bloc/results_bloc.dart';
import 'models/results_model.dart';
import 'package:flutter/material.dart';
import 'package:student_hub_app/core/app_export.dart';
import 'package:student_hub_app/widgets/app_bar/appbar_iconbutton_1.dart';
import 'package:student_hub_app/widgets/app_bar/appbar_subtitle.dart';
import 'package:student_hub_app/widgets/app_bar/custom_app_bar.dart';
import 'package:student_hub_app/widgets/custom_icon_button.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<ResultsBloc>(
        create: (context) =>
            ResultsBloc(ResultsState(resultsModelObj: ResultsModel()))
              ..add(ResultsInitialEvent()),
        child: ResultsScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<ResultsBloc, ResultsState>(builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              appBar: CustomAppBar(
                  leadingWidth: 56.h,
                  leading: AppbarIconbutton1(
                      svgPath: ImageConstant.imgArrowleft,
                      margin: EdgeInsets.only(left: 16.h),
                      onTap: () {
                        onTapArrowleftone(context);
                      }),
                  centerTitle: true,
                  title: AppbarSubtitle(text: "lbl_results".tr)),
              body: SizedBox(
                  width: double.maxFinite,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgCoolkidsxmasmorning,
                            height: 253.v,
                            width: 375.h),
                        SizedBox(height: 35.v),
                        Text("lbl_congratulations".tr,
                            style: theme.textTheme.headlineSmall),
                        SizedBox(height: 8.v),
                        SizedBox(
                            width: 177.h,
                            child: Text("msg_congratulations".tr,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                style: theme.textTheme.bodyMedium!
                                    .copyWith(height: 1.50))),
                        SizedBox(height: 5.v)
                      ])),
              bottomNavigationBar: Padding(
                  padding:
                      EdgeInsets.only(left: 107.h, right: 107.h, bottom: 40.v),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomIconButton(
                            height: 40.adaptSize,
                            width: 40.adaptSize,
                            padding: EdgeInsets.all(8.h),
                            child: CustomImageView(
                                svgPath: ImageConstant.imgFacebook)),
                        CustomIconButton(
                            height: 40.adaptSize,
                            width: 40.adaptSize,
                            margin: EdgeInsets.only(left: 16.h),
                            padding: EdgeInsets.all(8.h),
                            child: CustomImageView(
                                svgPath: ImageConstant.imgCamera)),
                        CustomIconButton(
                            height: 40.adaptSize,
                            width: 40.adaptSize,
                            margin: EdgeInsets.only(left: 16.h),
                            padding: EdgeInsets.all(8.h),
                            child: CustomImageView(
                                svgPath: ImageConstant.imgGoogle))
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
