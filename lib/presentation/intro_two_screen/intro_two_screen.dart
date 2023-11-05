import '../intro_two_screen/widgets/slidertext_item_widget.dart';
import 'bloc/intro_two_bloc.dart';
import 'models/intro_two_model.dart';
import 'models/slidertext_item_model.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:student_hub_app/core/app_export.dart';
import 'package:student_hub_app/widgets/custom_elevated_button.dart';

class IntroTwoScreen extends StatelessWidget {
  const IntroTwoScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<IntroTwoBloc>(
      create: (context) => IntroTwoBloc(IntroTwoState(
        introTwoModelObj: IntroTwoModel(),
      ))
        ..add(IntroTwoInitialEvent()),
      child: IntroTwoScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 16.v),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: EdgeInsets.only(right: 16.h),
                  child: Text(
                    "lbl_skip".tr,
                    style: theme.textTheme.titleSmall,
                  ),
                ),
              ),
              Spacer(),
              CustomImageView(
                imagePath: ImageConstant.imgCoolkidsstaying,
                height: 264.v,
                width: 375.h,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 39.h,
                  top: 24.v,
                  right: 39.h,
                ),
                child: BlocBuilder<IntroTwoBloc, IntroTwoState>(
                  builder: (context, state) {
                    return CarouselSlider.builder(
                      options: CarouselOptions(
                        height: 113.v,
                        initialPage: 0,
                        autoPlay: true,
                        viewportFraction: 1.0,
                        enableInfiniteScroll: false,
                        scrollDirection: Axis.horizontal,
                        onPageChanged: (
                          index,
                          reason,
                        ) {
                          state.sliderIndex = index;
                        },
                      ),
                      itemCount:
                          state.introTwoModelObj?.slidertextItemList.length ??
                              0,
                      itemBuilder: (context, index, realIndex) {
                        SlidertextItemModel model =
                            state.introTwoModelObj?.slidertextItemList[index] ??
                                SlidertextItemModel();
                        return SlidertextItemWidget(
                          model,
                        );
                      },
                    );
                  },
                ),
              ),
              SizedBox(height: 37.v),
              BlocBuilder<IntroTwoBloc, IntroTwoState>(
                builder: (context, state) {
                  return SizedBox(
                    height: 6.v,
                    child: AnimatedSmoothIndicator(
                      activeIndex: state.sliderIndex,
                      count:
                          state.introTwoModelObj?.slidertextItemList.length ??
                              0,
                      axisDirection: Axis.horizontal,
                      effect: ScrollingDotsEffect(
                        spacing: 12,
                        activeDotColor: appTheme.blue300,
                        dotColor: appTheme.blueGray100,
                        dotHeight: 6.v,
                        dotWidth: 6.h,
                      ),
                    ),
                  );
                },
              ),
              CustomElevatedButton(
                text: "lbl_next".tr,
                margin: EdgeInsets.fromLTRB(32.h, 72.v, 32.h, 33.v),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
