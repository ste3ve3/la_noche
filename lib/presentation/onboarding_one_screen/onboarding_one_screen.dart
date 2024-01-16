import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:la_noche/core/app_export.dart';
import 'package:la_noche/widgets/custom_elevated_button.dart';

class OnboardingOneScreen extends StatelessWidget {
  const OnboardingOneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgRectangle1420x428,
                      height: 420.v,
                      width: 428.h),
                  SizedBox(height: 37.v),
                  _buildInfoSection(context),
                  SizedBox(height: 60.v),
                  SizedBox(
                      height: 8.v,
                      child: AnimatedSmoothIndicator(
                          activeIndex: 0,
                          count: 3,
                          effect: ScrollingDotsEffect(
                              spacing: 6,
                              activeDotColor: theme.colorScheme.primary,
                              dotColor: appTheme.blueGray900,
                              dotHeight: 8.v,
                              dotWidth: 8.h))),
                  SizedBox(height: 32.v),
                  _buildSixtyFiveSection(context),
                  SizedBox(height: 5.v)
                ]))));
  }

  Widget _buildInfoSection(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 43.h),
        child: Column(children: [
          Container(
              width: 307.h,
              margin: EdgeInsets.only(left: 16.h, right: 17.h),
              child: Text("Comfortable Seating",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style:
                      theme.textTheme.headlineLarge!.copyWith(height: 1.50))),
          SizedBox(height: 20.v),
          SizedBox(
              width: 341.h,
              child: Text("Relax in style with our plush seating, designed for ultimate comfort during your stay at 'La noche.'",
                  maxLines: 4,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.bodyLarge18.copyWith(height: 1.50)))
        ]));
  }

  Widget _buildSixtyFiveSection(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          CustomElevatedButton(
              width: 180.h,
              text: "Skip",
              buttonStyle: CustomButtonStyles.fillBlueGray,
              onPressed: () {
                onTapSkip(context);
              }),
          CustomElevatedButton(
              width: 180.h,
              text: "Next",
              margin: EdgeInsets.only(left: 20.h),
              onPressed: () {
                onTapNext(context);
              })
        ]));
  }

  onTapSkip(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signInScreen);
  }

  onTapNext(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.onboardingTwoScreen);
  }
}
