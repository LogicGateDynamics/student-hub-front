import 'bloc/not_found_bloc.dart';
import 'models/not_found_model.dart';
import 'package:flutter/material.dart';
import 'package:student_hub_app/core/app_export.dart';
import 'package:student_hub_app/widgets/app_bar/appbar_iconbutton.dart';
import 'package:student_hub_app/widgets/app_bar/custom_app_bar.dart';
import 'package:student_hub_app/widgets/custom_search_view.dart';

class NotFoundScreen extends StatelessWidget {
  const NotFoundScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<NotFoundBloc>(
        create: (context) =>
            NotFoundBloc(NotFoundState(notFoundModelObj: NotFoundModel()))
              ..add(NotFoundInitialEvent()),
        child: NotFoundScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
                height: 68.v,
                leadingWidth: double.maxFinite,
                leading: AppbarIconbutton(
                    svgPath: ImageConstant.imgArrowleft,
                    margin: EdgeInsets.fromLTRB(15.h, 4.v, 312.h, 4.v),
                    onTap: () {
                      onTapArrowleftone(context);
                    })),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 12.v),
                child: Column(children: [
                  BlocSelector<NotFoundBloc, NotFoundState,
                          TextEditingController?>(
                      selector: (state) => state.searchController,
                      builder: (context, searchController) {
                        return CustomSearchView(
                            margin: EdgeInsets.symmetric(horizontal: 16.h),
                            controller: searchController,
                            hintText: "lbl_cooking".tr,
                            suffix: Container(
                                margin:
                                    EdgeInsets.fromLTRB(30.h, 16.v, 16.h, 16.v),
                                child: CustomImageView(
                                    svgPath: ImageConstant.imgRefresh)),
                            suffixConstraints: BoxConstraints(maxHeight: 56.v));
                      }),
                  SizedBox(height: 31.v),
                  CustomImageView(
                      imagePath: ImageConstant.imgCoolkidsstanding253x375,
                      height: 253.v,
                      width: 375.h),
                  SizedBox(height: 34.v),
                  Text("lbl_space_not_found".tr,
                      style: theme.textTheme.headlineSmall),
                  SizedBox(height: 9.v),
                  SizedBox(
                      width: 193.h,
                      child: Text("msg_try_searching_the".tr,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: theme.textTheme.bodyMedium!
                              .copyWith(height: 1.50))),
                  SizedBox(height: 5.v)
                ]))));
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
