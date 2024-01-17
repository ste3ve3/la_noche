import 'package:la_noche/presentation/gallery_screen/gallery_screen.dart';
import 'package:la_noche/presentation/select_date_guest_screen/select_date_guest_screen.dart';
import 'package:la_noche/widgets/app_bar/appbar_title.dart';

import '../hotel_details_screen/widgets/framenineteen_item_widget.dart';
import '../hotel_details_screen/widgets/photos_item_widget.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:readmore/readmore.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:la_noche/core/app_export.dart';
import 'package:la_noche/widgets/app_bar/appbar_leading_image.dart';
import 'package:la_noche/widgets/app_bar/custom_app_bar.dart';
import 'package:la_noche/widgets/custom_drop_down.dart';
import 'package:la_noche/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class HotelDetailsScreen extends StatelessWidget {
  HotelDetailsScreen({Key? key}) : super(key: key);

  Completer<GoogleMapController> googleMapController = Completer();

  List<String> dropdownItemList = ["Item One", "Item Two", "Item Three"];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 11.v),
                    child: Padding(
                        padding: EdgeInsets.only(bottom: 5.v),
                        child: Column(children: [
                          _buildEightySeven(context),
                          SizedBox(height: 24.v),
                          _buildHotelDetails(context),
                          SizedBox(height: 35.v),
                          _buildSeeAll(context),
                          SizedBox(height: 16.v),
                          _buildPhotos(context),
                          SizedBox(height: 32.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: EdgeInsets.only(left: 24.h),
                                  child: Text("Details",
                                      style: theme.textTheme.titleMedium))),
                          SizedBox(height: 18.v),
                          Padding(
                              padding: EdgeInsets.only(left: 52.h, right: 43.h),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Column(children: [
                                      CustomImageView(
                                          imagePath:
                                              ImageConstant.imgFramePrimary,
                                          height: 32.adaptSize,
                                          width: 32.adaptSize),
                                      SizedBox(height: 7.v),
                                      Text("Aparts",
                                          style: theme.textTheme.labelLarge)
                                    ]),
                                    Spacer(flex: 41),
                                    Column(children: [
                                      CustomImageView(
                                          imagePath: ImageConstant
                                              .imgFramePrimary32x32,
                                          height: 32.adaptSize,
                                          width: 32.adaptSize),
                                      SizedBox(height: 7.v),
                                      Text("4 Bedrooms",
                                          style: theme.textTheme.labelLarge)
                                    ]),
                                    Spacer(flex: 27),
                                    Column(children: [
                                      CustomImageView(
                                          imagePath:
                                              ImageConstant.imgFrame32x32,
                                          height: 32.adaptSize,
                                          width: 32.adaptSize),
                                      SizedBox(height: 7.v),
                                      Text("2 Bathrooms",
                                          style: theme.textTheme.labelLarge)
                                    ]),
                                    Spacer(flex: 31),
                                    Column(children: [
                                      CustomImageView(
                                          imagePath: ImageConstant.imgFrame1,
                                          height: 32.adaptSize,
                                          width: 32.adaptSize),
                                      SizedBox(height: 8.v),
                                      Text("4000 sqft",
                                          style: theme.textTheme.labelLarge)
                                    ])
                                  ])),
                          SizedBox(height: 33.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: EdgeInsets.only(left: 24.h),
                                  child: Text("Description",
                                      style: theme.textTheme.titleMedium))),
                          SizedBox(height: 17.v),
                          SizedBox(
                              width: 379.h,
                              child: ReadMoreText(
                                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in cillum pariatur. ",
                                  trimLines: 5,
                                  colorClickableText: theme.colorScheme.primary,
                                  trimMode: TrimMode.Line,
                                  trimCollapsedText: "Read more...",
                                  moreStyle: CustomTextStyles.bodyMediumGray50
                                      .copyWith(height: 1.50),
                                  lessStyle: CustomTextStyles.bodyMediumGray50
                                      .copyWith(height: 1.50))),
                          SizedBox(height: 31.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: EdgeInsets.only(left: 24.h),
                                  child: Text("Facilites",
                                      style: theme.textTheme.titleMedium))),
                          SizedBox(height: 22.v),
                          _buildNinetyFive(context),
                          SizedBox(height: 21.v),
                          _buildAutoLayoutHorizontal(context),
                          SizedBox(height: 32.v),
                          _buildPrice(context)
                        ]))))));
  }

  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 52.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowDownWhiteA700,
            margin: EdgeInsets.only(left: 24.h),
            onTap: () {
              onTapArrowDown(context);
            }),
        // title:
        //     AppbarTitle(text: "Lounge Details", margin: EdgeInsets.only(left: 16.h))
        );
  }

  Widget _buildEightySeven(BuildContext context) {
    return SizedBox(
        height: 206.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.center, children: [
          CustomImageView(
              imagePath: ImageConstant.imgRectangle3,
              height: 206.v,
              width: 428.h,
              alignment: Alignment.center),
          Align(
              alignment: Alignment.center,
              child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 164.h, vertical: 12.v),
                  decoration: AppDecoration.gradient,
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(height: 176.v),
                        SizedBox(
                            height: 6.v,
                            child: AnimatedSmoothIndicator(
                                activeIndex: 0,
                                count: 5,
                                effect: ScrollingDotsEffect(
                                    spacing: 11,
                                    activeDotColor: theme.colorScheme.primary,
                                    dotColor: appTheme.gray700,
                                    dotHeight: 6.v,
                                    dotWidth: 6.h)))
                      ])))
        ]));
  }

  Widget _buildHotelDetails(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 24.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("Living Room", style: theme.textTheme.headlineLarge),
          SizedBox(height: 15.v),
          Row(children: [
            CustomImageView(
                imagePath: ImageConstant.imgLinkedin,
                height: 20.adaptSize,
                width: 20.adaptSize),
            Padding(
                padding: EdgeInsets.only(left: 8.h),
                child:
                    Text("Kigali Airport ", style: CustomTextStyles.bodyMediumGray50))
          ])
        ]));
  }

  Widget _buildSeeAll(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text("Gallery Photos", style: theme.textTheme.titleMedium),
          GestureDetector(
              onTap: () {
                onTapTxtSeeAll(context);
              },
              child: Padding(
                  padding: EdgeInsets.only(bottom: 2.v),
                  child: Text("See All",
                      style: CustomTextStyles.titleMediumPrimary)))
        ]));
  }

  Widget _buildPhotos(BuildContext context) {
    return Align(
        alignment: Alignment.centerRight,
        child: SizedBox(
            height: 100.v,
            child: ListView.separated(
                padding: EdgeInsets.only(left: 24.h),
                scrollDirection: Axis.horizontal,
                separatorBuilder: (context, index) {
                  return SizedBox(width: 12.h);
                },
                itemCount: 3,
                itemBuilder: (context, index) {
                  return PhotosItemWidget();
                })));
  }

  Widget _buildNinetyFive(BuildContext context) {
    return Align(
        alignment: Alignment.centerLeft,
        child: Padding(
            padding: EdgeInsets.only(left: 27.h, right: 49.h),
            child: Row(children: [
              Column(children: [
                CustomImageView(
                    imagePath: ImageConstant.imgSettings,
                    height: 24.v,
                    width: 26.h),
                SizedBox(height: 12.v),
                Text("Swimming Pool", style: theme.textTheme.labelLarge)
              ]),
              Spacer(flex: 29),
              Padding(
                  padding: EdgeInsets.only(top: 2.v),
                  child: Column(children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgSettingsPrimary,
                        height: 18.v,
                        width: 26.h),
                    SizedBox(height: 13.v),
                    Text("WiFi", style: theme.textTheme.labelLarge)
                  ])),
              Spacer(flex: 37),
              Column(children: [
                CustomImageView(
                    imagePath: ImageConstant.imgCut, height: 23.v, width: 25.h),
                SizedBox(height: 11.v),
                Text("Restaurant", style: theme.textTheme.labelLarge)
              ]),
              Spacer(flex: 33),
              Column(children: [
                CustomImageView(
                    imagePath: ImageConstant.imgWarning,
                    height: 24.v,
                    width: 32.h),
                SizedBox(height: 12.v),
                Text("Parking", style: theme.textTheme.labelLarge)
              ])
            ])));
  }

  Widget _buildAutoLayoutHorizontal(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 29.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Column(children: [
            CustomImageView(
                imagePath: ImageConstant.imgUserPrimary,
                height: 26.v,
                width: 21.h),
            SizedBox(height: 11.v),
            Text("Meeting Room", style: theme.textTheme.labelLarge)
          ]),
          Spacer(flex: 48),
          Column(children: [
            CustomImageView(
                imagePath: ImageConstant.imgVector,
                height: 24.adaptSize,
                width: 24.adaptSize),
            SizedBox(height: 11.v),
            Text("Elevator", style: theme.textTheme.labelLarge)
          ]),
          Spacer(flex: 51),
          Column(children: [
            CustomImageView(
                imagePath: ImageConstant.imgSettingsPrimary26x26,
                height: 26.adaptSize,
                width: 26.adaptSize),
            SizedBox(height: 9.v),
            Text("Fitness Center", style: theme.textTheme.labelLarge)
          ]),
          Padding(
              padding: EdgeInsets.only(left: 19.h),
              child: Column(children: [
                CustomImageView(
                    imagePath: ImageConstant.imgSettings26x26,
                    height: 26.adaptSize,
                    width: 26.adaptSize),
                SizedBox(height: 11.v),
                Text("24-hours Open", style: theme.textTheme.labelLarge)
              ]))
        ]));
  }

  Widget _buildPrice(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Padding(
              padding: EdgeInsets.symmetric(vertical: 9.v),
              child: Text("29", style: CustomTextStyles.headlineLargePrimary)),
          Padding(
              padding: EdgeInsets.only(left: 4.h, top: 20.v, bottom: 21.v),
              child:
                  Text("/ day", style: CustomTextStyles.bodyMediumGray40001)),
          CustomElevatedButton(
              height: 58.v,
              width: 263.h,
              text: "Book Now!",
              margin: EdgeInsets.only(left: 17.h),
              buttonStyle: CustomButtonStyles.outlineGreenAF,
              onPressed: () {
                onTapBookNow(context);
              })
        ]));
  }

  /// Navigates back to the previous screen.
  onTapArrowDown(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the galleryScreen when the action is triggered.
  onTapTxtSeeAll(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => GalleryScreen()),
    );
  }

  onTapTxtSeeAll1(BuildContext context) {
    // TODO: implement Actions
  }

  /// Navigates to the selectDateGuestScreen when the action is triggered.
  onTapBookNow(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => SelectDateGuestScreen()),
    );
  }
}
