import 'bloc/not_saved_bloc.dart';
import 'models/not_saved_model.dart';
import 'package:flutter/material.dart';
import 'package:student_hub_app/core/app_export.dart';
import 'package:student_hub_app/widgets/app_bar/appbar_iconbutton_1.dart';
import 'package:student_hub_app/widgets/app_bar/appbar_subtitle.dart';
import 'package:student_hub_app/widgets/app_bar/custom_app_bar.dart';
import 'package:student_hub_app/widgets/custom_elevated_button.dart';

class NotSavedScreen extends StatelessWidget {
  const NotSavedScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<NotSavedBloc>(
        create: (context) =>
            NotSavedBloc(NotSavedState(notSavedModelObj: NotSavedModel()))
              ..add(NotSavedInitialEvent()),
        child: NotSavedScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<NotSavedBloc, NotSavedState>(builder: (context, state) {
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
                  title: AppbarSubtitle(text: "lbl_saved".tr)),
              body: SizedBox(
                  width: double.maxFinite,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgCoolkidsalone253x375,
                            height: 253.v,
                            width: 375.h),
                        SizedBox(height: 35.v),
                        Text("lbl_space_not_saved".tr,
                            style: theme.textTheme.headlineSmall),
                        SizedBox(height: 9.v),
                        SizedBox(
                            width: 146.h,
                            child: Text("msg_try_saving_the_course".tr,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                style: theme.textTheme.bodyMedium!
                                    .copyWith(height: 1.50))),
                        CustomElevatedButton(
                            text: "lbl_continue".tr,
                            margin: EdgeInsets.fromLTRB(33.h, 31.v, 33.h, 5.v))
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
