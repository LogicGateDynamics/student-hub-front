import 'bloc/home_screen_bloc.dart';
import 'models/home_screen_model.dart';
import 'package:flutter/material.dart';
import 'package:student_hub_app/core/app_export.dart';
import 'package:student_hub_app/widgets/app_bar/appbar_iconbutton_2.dart';
import 'package:student_hub_app/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:student_hub_app/widgets/app_bar/appbar_title.dart';
import 'package:student_hub_app/widgets/app_bar/custom_app_bar.dart';
import 'package:student_hub_app/widgets/custom_search_view.dart';

// ignore_for_file: must_be_immutable
class HomeScreenPage extends StatelessWidget {
  const HomeScreenPage({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<HomeScreenBloc>(
      create: (context) => HomeScreenBloc(HomeScreenState(
        homeScreenModelObj: HomeScreenModel(),
      ))
        ..add(HomeScreenInitialEvent()),
      child: HomeScreenPage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: CustomAppBar(
          height: 76.v,
          title: Padding(
            padding: EdgeInsets.only(left: 16.h),
            child: Column(
              children: [
                AppbarSubtitle1(
                  text: "lbl_hello".tr,
                  margin: EdgeInsets.only(right: 124.h),
                ),
                SizedBox(height: 8.v),
                AppbarTitle(
                  text: "lbl_lucas_reis".tr,
                ),
              ],
            ),
          ),
          actions: [
            AppbarIconbutton2(
              svgPath: ImageConstant.imgReply,
              margin: EdgeInsets.symmetric(
                horizontal: 16.h,
                vertical: 8.v,
              ),
            ),
          ],
        ),
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 14.v),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.h),
              child: Column(
                children: [
                  BlocSelector<HomeScreenBloc, HomeScreenState,
                      TextEditingController?>(
                    selector: (state) => state.searchController,
                    builder: (context, searchController) {
                      return CustomSearchView(
                        controller: searchController,
                        hintText: "lbl_search_course".tr,
                        suffix: Container(
                          margin: EdgeInsets.fromLTRB(30.h, 16.v, 16.h, 16.v),
                          child: CustomImageView(
                            svgPath: ImageConstant.imgRefresh,
                          ),
                        ),
                        suffixConstraints: BoxConstraints(
                          maxHeight: 56.v,
                        ),
                      );
                    },
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 12.v,
                      right: 7.h,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            top: 4.v,
                            bottom: 2.v,
                          ),
                          child: Text(
                            "lbl_category".tr,
                            style:
                                CustomTextStyles.bodyMediumSecondaryContainer,
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 11.h,
                            vertical: 4.v,
                          ),
                          decoration: AppDecoration.fillBlue.copyWith(
                            borderRadius: BorderRadiusStyle.circleBorder12,
                          ),
                          child: Text(
                            "lbl_css".tr,
                            style: CustomTextStyles.labelLargeGray10001,
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 11.h,
                            vertical: 4.v,
                          ),
                          decoration: AppDecoration.fillBlue.copyWith(
                            borderRadius: BorderRadiusStyle.circleBorder12,
                          ),
                          child: Text(
                            "lbl_ux".tr,
                            style: CustomTextStyles.labelLargeGray10001,
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 11.h,
                            vertical: 4.v,
                          ),
                          decoration: AppDecoration.fillBlue.copyWith(
                            borderRadius: BorderRadiusStyle.circleBorder12,
                          ),
                          child: Text(
                            "lbl_swift".tr,
                            style: CustomTextStyles.labelLargeGray10001,
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 11.h,
                            vertical: 4.v,
                          ),
                          decoration: AppDecoration.fillBlue.copyWith(
                            borderRadius: BorderRadiusStyle.circleBorder12,
                          ),
                          child: Text(
                            "lbl_ui".tr,
                            style: CustomTextStyles.labelLargeGray10001,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20.v),
                  Container(
                    decoration: AppDecoration.outlineGray400.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder8,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          decoration: AppDecoration.fillGray.copyWith(
                            borderRadius: BorderRadiusStyle.customBorderTL8,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              SizedBox(height: 16.v),
                              CustomImageView(
                                imagePath: ImageConstant.imgCoolkidsdiscussion,
                                height: 178.v,
                                width: 343.h,
                                radius: BorderRadius.circular(
                                  2.h,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 16.h,
                            top: 17.v,
                          ),
                          child: Text(
                            "lbl_3_h_30_min".tr,
                            style: theme.textTheme.labelLarge,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 16.h,
                            top: 9.v,
                          ),
                          child: Text(
                            "msg_management_it_room".tr,
                            style: theme.textTheme.headlineSmall,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 16.h,
                            top: 6.v,
                            bottom: 8.v,
                          ),
                          child: Text(
                            "msg_advanced_management".tr,
                            style:
                                CustomTextStyles.bodyMediumSecondaryContainer,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 16.v),
                  Container(
                    decoration: AppDecoration.outlineGray400.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder8,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 8.v),
                          decoration: AppDecoration.fillIndigo.copyWith(
                            borderRadius: BorderRadiusStyle.customBorderTL8,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              SizedBox(height: 8.v),
                              CustomImageView(
                                imagePath: ImageConstant.imgCoolkidsalone,
                                height: 138.v,
                                width: 343.h,
                                radius: BorderRadius.circular(
                                  2.h,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(
                                  left: 16.h,
                                  top: 8.v,
                                  right: 16.h,
                                ),
                                padding: EdgeInsets.symmetric(
                                  horizontal: 16.h,
                                  vertical: 3.v,
                                ),
                                decoration: AppDecoration.fillBlue.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.circleBorder12,
                                ),
                                child: Text(
                                  "lbl_50".tr,
                                  style: CustomTextStyles.titleSmallGray10001,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 16.h,
                            top: 17.v,
                          ),
                          child: Text(
                            "lbl_3_h_30_min".tr,
                            style: theme.textTheme.labelLarge,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 16.h,
                            top: 4.v,
                          ),
                          child: Text(
                            "lbl_html".tr,
                            style: theme.textTheme.headlineSmall,
                          ),
                        ),
                        SizedBox(height: 8.v),
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            "msg_advanced_web_applications".tr,
                            style:
                                CustomTextStyles.bodyMediumSecondaryContainer,
                          ),
                        ),
                        SizedBox(height: 8.v),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
