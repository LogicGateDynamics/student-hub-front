import 'bloc/profile_bloc.dart';
import 'models/profile_model.dart';
import 'package:flutter/material.dart';
import 'package:student_hub_app/core/app_export.dart';
import 'package:student_hub_app/widgets/custom_outlined_button.dart';

// ignore_for_file: must_be_immutable
class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<ProfileBloc>(
      create: (context) => ProfileBloc(ProfileState(
        profileModelObj: ProfileModel(),
      ))
        ..add(ProfileInitialEvent()),
      child: ProfilePage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<ProfileBloc, ProfileState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: Container(
              width: double.maxFinite,
              decoration: AppDecoration.fillOnPrimary,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 16.h),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 140.adaptSize,
                      width: 140.adaptSize,
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: Container(
                              height: 138.v,
                              width: 140.h,
                              decoration: BoxDecoration(
                                color: appTheme.gray100,
                                borderRadius: BorderRadius.circular(
                                  70.h,
                                ),
                                border: Border.all(
                                  color: appTheme.blue300,
                                  width: 4.h,
                                  strokeAlign: strokeAlignOutside,
                                ),
                              ),
                            ),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgCoolkidsbust,
                            height: 130.v,
                            width: 140.h,
                            radius: BorderRadius.circular(
                              70.h,
                            ),
                            alignment: Alignment.bottomCenter,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 32.v),
                    CustomOutlinedButton(
                      text: "lbl_space".tr,
                    ),
                    SizedBox(height: 16.v),
                    CustomOutlinedButton(
                      text: "lbl_time_control".tr,
                    ),
                    SizedBox(height: 16.v),
                    CustomOutlinedButton(
                      text: "msg_student_schedule".tr,
                    ),
                    SizedBox(height: 17.v),
                    Text(
                      "lbl_log_out".tr,
                      style: theme.textTheme.titleSmall,
                    ),
                    SizedBox(height: 5.v),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
