import 'bloc/settings_bloc.dart';
import 'models/settings_model.dart';
import 'package:flutter/material.dart';
import 'package:student_hub_app/core/app_export.dart';
import 'package:student_hub_app/widgets/app_bar/appbar_iconbutton_1.dart';
import 'package:student_hub_app/widgets/app_bar/appbar_subtitle.dart';
import 'package:student_hub_app/widgets/app_bar/custom_app_bar.dart';
import 'package:student_hub_app/widgets/custom_icon_button.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<SettingsBloc>(
        create: (context) =>
            SettingsBloc(SettingsState(settingsModelObj: SettingsModel()))
              ..add(SettingsInitialEvent()),
        child: SettingsPage());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<SettingsBloc, SettingsState>(builder: (context, state) {
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
                  title: AppbarSubtitle(text: "lbl_settings".tr)),
              body: Container(
                  width: double.maxFinite,
                  padding: EdgeInsets.symmetric(horizontal: 16.h),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 24.v),
                        CustomImageView(
                            imagePath: ImageConstant.imgCoolkidsonwheels,
                            height: 190.v,
                            width: 343.h),
                        SizedBox(height: 16.v),
                        Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 16.h, vertical: 21.v),
                            decoration: AppDecoration.outlineGray.copyWith(
                                borderRadius:
                                    BorderRadiusStyle.roundedBorder16),
                            child: Row(children: [
                              CustomIconButton(
                                  height: 32.adaptSize,
                                  width: 32.adaptSize,
                                  margin: EdgeInsets.symmetric(vertical: 4.v),
                                  padding: EdgeInsets.all(9.h),
                                  decoration:
                                      IconButtonStyleHelper.fillBlueTL16,
                                  child: CustomImageView(
                                      svgPath: ImageConstant.imgNotification)),
                              Padding(
                                  padding: EdgeInsets.only(
                                      left: 12.h, top: 7.v, bottom: 8.v),
                                  child: Text("lbl_notifications".tr,
                                      style: theme.textTheme.titleLarge)),
                              Spacer(),
                              CustomImageView(
                                  svgPath: ImageConstant.imgCameraBlueGray400,
                                  height: 40.adaptSize,
                                  width: 40.adaptSize)
                            ])),
                        SizedBox(height: 13.v),
                        Text("msg_account_information".tr,
                            style: theme.textTheme.titleLarge),
                        SizedBox(height: 15.v),
                        Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 16.h, vertical: 18.v),
                            decoration: AppDecoration.outlineGray.copyWith(
                                borderRadius:
                                    BorderRadiusStyle.roundedBorder16),
                            child: Row(children: [
                              CustomIconButton(
                                  height: 32.adaptSize,
                                  width: 32.adaptSize,
                                  margin: EdgeInsets.symmetric(vertical: 6.v),
                                  padding: EdgeInsets.all(8.h),
                                  decoration:
                                      IconButtonStyleHelper.fillBlueTL16,
                                  child: CustomImageView(
                                      svgPath: ImageConstant.imgUser)),
                              Padding(
                                  padding:
                                      EdgeInsets.only(left: 12.h, bottom: 2.v),
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text("lbl_name".tr,
                                            style: theme.textTheme.titleLarge),
                                        SizedBox(height: 2.v),
                                        Text("lbl_juana_antonieta".tr,
                                            style: theme.textTheme.bodyMedium)
                                      ])),
                              Spacer(),
                              CustomImageView(
                                  svgPath: ImageConstant.imgArrowright,
                                  height: 24.adaptSize,
                                  width: 24.adaptSize,
                                  margin: EdgeInsets.symmetric(vertical: 10.v))
                            ])),
                        SizedBox(height: 16.v),
                        Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 16.h, vertical: 18.v),
                            decoration: AppDecoration.outlineGray.copyWith(
                                borderRadius:
                                    BorderRadiusStyle.roundedBorder16),
                            child: Row(children: [
                              CustomIconButton(
                                  height: 32.adaptSize,
                                  width: 32.adaptSize,
                                  margin: EdgeInsets.symmetric(vertical: 7.v),
                                  padding: EdgeInsets.all(9.h),
                                  decoration:
                                      IconButtonStyleHelper.fillBlueTL16,
                                  child: CustomImageView(
                                      svgPath: ImageConstant.imgMail)),
                              Padding(
                                  padding: EdgeInsets.only(left: 11.h),
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text("lbl_email".tr,
                                            style: theme.textTheme.titleLarge),
                                        SizedBox(height: 4.v),
                                        Text("msg_juanita123_gmail_com".tr,
                                            style: theme.textTheme.bodyMedium)
                                      ])),
                              Spacer(),
                              CustomImageView(
                                  svgPath: ImageConstant.imgArrowright,
                                  height: 24.adaptSize,
                                  width: 24.adaptSize,
                                  margin: EdgeInsets.symmetric(vertical: 11.v))
                            ])),
                        SizedBox(height: 16.v),
                        Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 16.h, vertical: 18.v),
                            decoration: AppDecoration.outlineGray.copyWith(
                                borderRadius:
                                    BorderRadiusStyle.roundedBorder16),
                            child: Row(children: [
                              CustomIconButton(
                                  height: 32.adaptSize,
                                  width: 32.adaptSize,
                                  margin: EdgeInsets.symmetric(vertical: 6.v),
                                  padding: EdgeInsets.all(9.h),
                                  decoration:
                                      IconButtonStyleHelper.fillBlueTL16,
                                  child: CustomImageView(
                                      svgPath: ImageConstant.imgLock)),
                              Padding(
                                  padding: EdgeInsets.only(left: 12.h),
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text("lbl_password".tr,
                                            style: theme.textTheme.titleLarge),
                                        SizedBox(height: 4.v),
                                        Text("msg_changed_2_weeks".tr,
                                            style: theme.textTheme.bodyMedium)
                                      ])),
                              Spacer(),
                              CustomImageView(
                                  svgPath: ImageConstant.imgArrowright,
                                  height: 24.adaptSize,
                                  width: 24.adaptSize,
                                  margin: EdgeInsets.symmetric(vertical: 10.v))
                            ]))
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
