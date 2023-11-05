import '../intro_three_screen/widgets/slidertext1_item_widget.dart';
import 'bloc/intro_three_bloc.dart';
import 'models/intro_three_model.dart';
import 'models/slidertext1_item_model.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:student_hub_app/core/app_export.dart';
import 'package:student_hub_app/widgets/custom_elevated_button.dart';

class IntroThreeScreen extends StatelessWidget {
  const IntroThreeScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<IntroThreeBloc>(
      create: (context) => IntroThreeBloc(IntroThreeState(
        introThreeModelObj: IntroThreeModel(),
      ))
        ..add(IntroThreeInitialEvent()),
      child: IntroThreeScreen(),
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
                imagePath: ImageConstant.imgIllustration,
                height: 257.v,
                width: 375.h,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 39.h,
                  top: 59.v,
                  right: 39.h,
                ),
                child: BlocBuilder<IntroThreeBloc, IntroThreeState>(
                  builder: (context, state) {
                    return CarouselSlider.builder(
                      options: CarouselOptions(
                        height: 79.v,
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
                      itemCount: state
                              .introThreeModelObj?.slidertext1ItemList.length ??
                          0,
                      itemBuilder: (context, index, realIndex) {
                        Slidertext1ItemModel model = state.introThreeModelObj
                                ?.slidertext1ItemList[index] ??
                            Slidertext1ItemModel();
                        return Slidertext1ItemWidget(
                          model,
                        );
                      },
                    );
                  },
                ),
              ),
              SizedBox(height: 37.v),
              BlocBuilder<IntroThreeBloc, IntroThreeState>(
                builder: (context, state) {
                  return SizedBox(
                    height: 6.v,
                    child: AnimatedSmoothIndicator(
                      activeIndex: state.sliderIndex,
                      count: state
                              .introThreeModelObj?.slidertext1ItemList.length ??
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
                text: "lbl_let_s_start".tr,
                margin: EdgeInsets.fromLTRB(32.h, 80.v, 32.h, 33.v),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
