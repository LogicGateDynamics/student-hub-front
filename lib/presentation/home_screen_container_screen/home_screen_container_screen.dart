import 'bloc/home_screen_container_bloc.dart';
import 'models/home_screen_container_model.dart';
import 'package:flutter/material.dart';
import 'package:student_hub_app/core/app_export.dart';
import 'package:student_hub_app/presentation/home_screen_page/home_screen_page.dart';
import 'package:student_hub_app/presentation/profile_page/profile_page.dart';
import 'package:student_hub_app/presentation/settings_page/settings_page.dart';
import 'package:student_hub_app/widgets/custom_bottom_bar.dart';

// ignore_for_file: must_be_immutable
class HomeScreenContainerScreen extends StatelessWidget {
  HomeScreenContainerScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<HomeScreenContainerBloc>(
        create: (context) => HomeScreenContainerBloc(HomeScreenContainerState(
            homeScreenContainerModelObj: HomeScreenContainerModel()))
          ..add(HomeScreenContainerInitialEvent()),
        child: HomeScreenContainerScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<HomeScreenContainerBloc, HomeScreenContainerState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              body: Navigator(
                  key: navigatorKey,
                  initialRoute: AppRoutes.homeScreenPage,
                  onGenerateRoute: (routeSetting) => PageRouteBuilder(
                      pageBuilder: (ctx, ani, ani1) =>
                          getCurrentPage(context, routeSetting.name!),
                      transitionDuration: Duration(seconds: 0))),
              bottomNavigationBar:
                  CustomBottomBar(onChanged: (BottomBarEnum type) {
                Navigator.pushNamed(
                    navigatorKey.currentContext!, getCurrentRoute(type));
              })));
    });
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Spaces:
        return AppRoutes.homeScreenPage;
      case BottomBarEnum.Profile:
        return AppRoutes.profilePage;
      case BottomBarEnum.Settings:
        return AppRoutes.settingsPage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(
    BuildContext context,
    String currentRoute,
  ) {
    switch (currentRoute) {
      case AppRoutes.homeScreenPage:
        return HomeScreenPage.builder(context);
      case AppRoutes.profilePage:
        return ProfilePage.builder(context);
      case AppRoutes.settingsPage:
        return SettingsPage.builder(context);
      default:
        return DefaultWidget();
    }
  }
}
