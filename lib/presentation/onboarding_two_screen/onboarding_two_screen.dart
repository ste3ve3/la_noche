import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:la_noche/core/app_export.dart';
import 'package:la_noche/widgets/custom_elevated_button.dart';

class OnboardingTwoScreen extends StatelessWidget {
  const OnboardingTwoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
          child: Scaffold(
              body: SizedBox(
                  width: double.maxFinite,
                  child: Column(children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgRectangle11,
                        height: 420.v,
                        width: 428.h),
                    SizedBox(height: 37.v),
                    _buildInfoSection(context),
                    SizedBox(height: 60.v),
                    SizedBox(
                        height: 8.v,
                        child: AnimatedSmoothIndicator(
                            activeIndex: 1,
                            count: 3,
                            effect: ScrollingDotsEffect(
                                spacing: 6,
                                activeDotColor: theme.colorScheme.primary,
                                dotColor: appTheme.gray700,
                                dotHeight: 8.v,
                                dotWidth: 8.h))),
                    SizedBox(height: 30.v),
                    _buildThirtyOneSection(context),
                    SizedBox(height: 5.v)
                  ]))));
  }

  Widget _buildInfoSection(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 43.h),
        child: Column(children: [
          Container(
              width: 327.h,
              margin: EdgeInsets.only(left: 7.h, right: 5.h),
              child: Text("Private Workspaces",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style:
                      theme.textTheme.headlineLarge!.copyWith(height: 1.50))),
          SizedBox(height: 20.v),
          SizedBox(
              width: 341.h,
              child: Text("Boost your productivity in our dedicated private workspaces, equipped with everything you need for a focused and efficient work session.",
                  maxLines: 5,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.bodyLarge18.copyWith(height: 1.50)))
        ]));
  }

  Widget _buildThirtyOneSection(BuildContext context) {
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
    Navigator.pushNamed(context, AppRoutes.onboardingThreeScreen);
  }
}
