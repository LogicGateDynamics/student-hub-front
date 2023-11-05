import 'bloc/sign_up_bloc.dart';
import 'models/sign_up_model.dart';
import 'package:flutter/material.dart';
import 'package:student_hub_app/core/app_export.dart';
import 'package:student_hub_app/core/utils/validation_functions.dart';
import 'package:student_hub_app/widgets/app_bar/appbar_iconbutton.dart';
import 'package:student_hub_app/widgets/app_bar/custom_app_bar.dart';
import 'package:student_hub_app/widgets/custom_elevated_button.dart';
import 'package:student_hub_app/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class SignUpScreen extends StatelessWidget {
  SignUpScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<SignUpBloc>(
        create: (context) =>
            SignUpBloc(SignUpState(signUpModelObj: SignUpModel()))
              ..add(SignUpInitialEvent()),
        child: SignUpScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
                height: 48.v,
                leadingWidth: double.maxFinite,
                leading: AppbarIconbutton(
                    svgPath: ImageConstant.imgArrowleft,
                    margin: EdgeInsets.only(left: 15.h, right: 312.h),
                    onTap: () {
                      onTapArrowleftone(context);
                    })),
            body: Form(
                key: _formKey,
                child: Container(
                    width: 343.h,
                    margin: EdgeInsets.symmetric(horizontal: 16.h),
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgCoolkidsstanding,
                              height: 253.v,
                              width: 343.h),
                          SizedBox(height: 19.v),
                          Text("lbl_sign_up".tr,
                              style: theme.textTheme.headlineSmall),
                          Padding(
                              padding: EdgeInsets.only(top: 10.v, right: 89.h),
                              child: Text("msg_create_your_account".tr,
                                  style: theme.textTheme.bodyMedium)),
                          SizedBox(height: 17.v),
                          BlocSelector<SignUpBloc, SignUpState,
                                  TextEditingController?>(
                              selector: (state) => state.nameController,
                              builder: (context, nameController) {
                                return CustomTextFormField(
                                    controller: nameController,
                                    hintText: "lbl_name".tr,
                                    validator: (value) {
                                      if (!isText(value)) {
                                        return "Please enter valid text";
                                      }
                                      return null;
                                    });
                              }),
                          SizedBox(height: 16.v),
                          BlocSelector<SignUpBloc, SignUpState,
                                  TextEditingController?>(
                              selector: (state) => state.emailController,
                              builder: (context, emailController) {
                                return CustomTextFormField(
                                    controller: emailController,
                                    hintText: "lbl_e_mail2".tr,
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
                          BlocBuilder<SignUpBloc, SignUpState>(
                              builder: (context, state) {
                            return CustomTextFormField(
                                controller: state.passwordController,
                                hintText: "lbl_password".tr,
                                textInputAction: TextInputAction.done,
                                textInputType: TextInputType.visiblePassword,
                                suffix: InkWell(
                                    onTap: () {
                                      context.read<SignUpBloc>().add(
                                          ChangePasswordVisibilityEvent(
                                              value: !state.isShowPassword));
                                    },
                                    child: Container(
                                        margin: EdgeInsets.fromLTRB(
                                            30.h, 14.v, 16.h, 14.v),
                                        child: CustomImageView(
                                            svgPath: state.isShowPassword
                                                ? ImageConstant.imgEye
                                                : ImageConstant.imgEye))),
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
                          SizedBox(height: 16.v),
                          CustomElevatedButton(text: "lbl_sign_up".tr),
                          SizedBox(height: 16.v),
                          Align(
                              alignment: Alignment.center,
                              child: Text("lbl_log_in".tr,
                                  style: theme.textTheme.titleSmall))
                        ])))));
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
