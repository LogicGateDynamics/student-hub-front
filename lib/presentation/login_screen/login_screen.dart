import 'bloc/login_bloc.dart';
import 'models/login_model.dart';
import 'package:flutter/material.dart';
import 'package:student_hub_app/core/app_export.dart';
import 'package:student_hub_app/core/utils/validation_functions.dart';
import 'package:student_hub_app/widgets/custom_elevated_button.dart';
import 'package:student_hub_app/widgets/custom_icon_button.dart';
import 'package:student_hub_app/widgets/custom_text_form_field.dart';
import 'package:student_hub_app/domain/facebookauth/facebook_auth_helper.dart';
import 'package:student_hub_app/domain/googleauth/google_auth_helper.dart';

// ignore_for_file: must_be_immutable
class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<LoginBloc>(
        create: (context) => LoginBloc(LoginState(loginModelObj: LoginModel()))
          ..add(LoginInitialEvent()),
        child: LoginScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding:
                        EdgeInsets.symmetric(horizontal: 16.h, vertical: 52.v),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgCoolkidssitting,
                              height: 253.v,
                              width: 343.h),
                          SizedBox(height: 19.v),
                          Text("lbl_log_in".tr,
                              style: theme.textTheme.headlineSmall),
                          Padding(
                              padding: EdgeInsets.only(top: 10.v, right: 68.h),
                              child: Text("msg_login_with_social".tr,
                                  style: theme.textTheme.bodyMedium)),
                          Padding(
                              padding: EdgeInsets.only(top: 8.v, right: 83.h),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    CustomIconButton(
                                        height: 40.adaptSize,
                                        width: 40.adaptSize,
                                        padding: EdgeInsets.all(8.h),
                                        onTap: () {
                                          onTapBtnFacebookone(context);
                                        },
                                        child: CustomImageView(
                                            svgPath:
                                                ImageConstant.imgFacebook)),
                                    CustomIconButton(
                                        height: 40.adaptSize,
                                        width: 40.adaptSize,
                                        margin: EdgeInsets.only(left: 12.h),
                                        padding: EdgeInsets.all(8.h),
                                        child: CustomImageView(
                                            svgPath: ImageConstant.imgCamera)),
                                    CustomIconButton(
                                        height: 40.adaptSize,
                                        width: 40.adaptSize,
                                        margin: EdgeInsets.only(left: 12.h),
                                        padding: EdgeInsets.all(8.h),
                                        onTap: () {
                                          onTapBtnGoogleone(context);
                                        },
                                        child: CustomImageView(
                                            svgPath: ImageConstant.imgGoogle))
                                  ])),
                          SizedBox(height: 16.v),
                          BlocSelector<LoginBloc, LoginState,
                                  TextEditingController?>(
                              selector: (state) => state.emailController,
                              builder: (context, emailController) {
                                return CustomTextFormField(
                                    controller: emailController,
                                    hintText: "lbl_email".tr,
                                    textInputType: TextInputType.emailAddress,
                                    validator: (value) {
                                      if (value == null ||
                                          (!isValidEmail(value,
                                              isRequired: true))) {
                                        return "Please enter valid email";
                                      }
                                      return null;
                                    });
                              }),
                          SizedBox(height: 16.v),
                          BlocBuilder<LoginBloc, LoginState>(
                              builder: (context, state) {
                            return CustomTextFormField(
                                controller: state.passwordController,
                                hintText: "lbl_password".tr,
                                textInputAction: TextInputAction.done,
                                textInputType: TextInputType.visiblePassword,
                                suffix: InkWell(
                                    onTap: () {
                                      context.read<LoginBloc>().add(
                                          ChangePasswordVisibilityEvent(
                                              value: !state.isShowPassword));
                                    },
                                    child: Container(
                                        margin: EdgeInsets.fromLTRB(
                                            30.h, 14.v, 16.h, 14.v),
                                        child: CustomImageView(
                                            svgPath: state.isShowPassword
                                                ? ImageConstant.imgPasswordIcons
                                                : ImageConstant
                                                    .imgPasswordIcons))),
                                suffixConstraints:
                                    BoxConstraints(maxHeight: 53.v),
                                validator: (value) {
                                  if (value == null ||
                                      (!isValidPassword(value,
                                          isRequired: true))) {
                                    return "Please enter valid password";
                                  }
                                  return null;
                                },
                                obscureText: state.isShowPassword,
                                contentPadding: EdgeInsets.only(
                                    left: 16.h, top: 18.v, bottom: 18.v));
                          }),
                          SizedBox(height: 17.v),
                          Align(
                              alignment: Alignment.center,
                              child: Text("msg_forgot_password".tr,
                                  style: theme.textTheme.titleSmall)),
                          SizedBox(height: 13.v),
                          CustomElevatedButton(text: "lbl_log_in".tr),
                          SizedBox(height: 16.v),
                          Align(
                              alignment: Alignment.center,
                              child: Text("lbl_sign_up".tr,
                                  style: theme.textTheme.titleSmall)),
                          SizedBox(height: 5.v)
                        ])))));
  }

  /// Performs a Facebook sign-in and returns a [FacebookUser] object.
  ///
  /// If the sign-in is successful, the [onSuccess] callback will be called with
  /// a TODO comment needed to be modified by you.
  /// If the sign-in fails, the [onError] callback will be called with the error message.
  ///
  /// Throws an exception if the Facebook sign-in process fails.
  onTapBtnFacebookone(BuildContext context) async {
    await FacebookAuthHelper().facebookSignInProcess().then((facebookUser) {
      //TODO Actions to be performed after signin
    }).catchError((onError) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(onError.toString())));
    });
  }

  /// Performs a Google sign-in and returns a [GoogleUser] object.
  ///
  /// If the sign-in is successful, the [onSuccess] callback will be called with
  /// a TODO comment needed to be modified by you.
  /// If the sign-in fails, the [onError] callback will be called with the error message.
  ///
  /// Throws an exception if the Google sign-in process fails.
  onTapBtnGoogleone(BuildContext context) async {
    await GoogleAuthHelper().googleSignInProcess().then((googleUser) {
      if (googleUser != null) {
        //TODO Actions to be performed after signin
      } else {
        ScaffoldMessenger.of(context)
            .showSnackBar(const SnackBar(content: Text('user data is empty')));
      }
    }).catchError((onError) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(onError.toString())));
    });
  }
}
