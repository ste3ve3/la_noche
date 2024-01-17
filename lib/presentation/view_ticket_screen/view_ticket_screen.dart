import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:qr_flutter/qr_flutter.dart';
import 'package:la_noche/core/app_export.dart';
import 'package:la_noche/widgets/app_bar/appbar_leading_image.dart';
import 'package:la_noche/widgets/app_bar/appbar_title.dart';
import 'package:la_noche/widgets/app_bar/custom_app_bar.dart';
import 'package:la_noche/widgets/custom_elevated_button.dart';

class ViewTicketScreen extends StatelessWidget {
  const ViewTicketScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: SingleChildScrollView(
              child: SizedBox(
                  width: double.maxFinite,
                  child: Column(children: [
                    SizedBox(height: 52.v),
                    Container(
                        margin: EdgeInsets.symmetric(horizontal: 24.h),
                        padding: EdgeInsets.symmetric(
                            horizontal: 22.h, vertical: 34.v),
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: fs.Svg(ImageConstant.imgGroupBlueGray900),
                                fit: BoxFit.cover)),
                        child: Column(children: [
                          Text("La noche ticket",
                              style: theme.textTheme.titleMedium),
                          SizedBox(height: 11.v),
                          Container(
                              margin: EdgeInsets.symmetric(horizontal: 40.h),
                              padding: EdgeInsets.all(16.h),
                              decoration: AppDecoration.fillBlueGray,
                              child: Container(
                                color: Colors.white,
                                child: QrImageView(
                                  data: 'https://www.google.com',
                                  size: 224.adaptSize,
                                ),
                              )),
                          SizedBox(height: 18.v),
                          Divider(color: appTheme.gray700),
                          SizedBox(height: 53.v),
                          _buildTicketDetails(context)
                        ]))
                  ])),
            ),
            bottomNavigationBar: _buildDownloadTicket(context)));
  }

  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 75.v,
        leadingWidth: 52.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowDown,
            margin: EdgeInsets.only(left: 24.h, top: 11.v, bottom: 13.v),
            onTap: () {
              onTapArrowDown(context);
            }),
        title:
            AppbarTitle(text: "Ticket", margin: EdgeInsets.only(left: 16.h)));
  }

  Widget _buildTicketDetails(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 9.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
              padding: EdgeInsets.only(left: 7.h),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Name",
                              style: CustomTextStyles.bodyLargeGray40001),
                          SizedBox(height: 5.v),
                          Text("Steve",
                              style: CustomTextStyles.titleMediumSemiBold_1)
                        ]),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Phone Number",
                              style: CustomTextStyles.bodyLargeGray40001),
                          SizedBox(height: 6.v),
                          Text("+250 788 619 790",
                              style: CustomTextStyles.titleMediumSemiBold_1)
                        ])
                  ])),
          SizedBox(height: 30.v),
          Padding(
              padding: EdgeInsets.only(left: 7.h, right: 45.h),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Check in",
                              style: CustomTextStyles.bodyLargeGray40001),
                          SizedBox(height: 6.v),
                          Text("Dec 16, 2024",
                              style: CustomTextStyles.titleMediumSemiBold_1)
                        ]),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Check out",
                              style: CustomTextStyles.bodyLargeGray40001),
                          SizedBox(height: 6.v),
                          Text("Dec 20, 2024",
                              style: CustomTextStyles.titleMediumSemiBold_1)
                        ])
                  ])),
          SizedBox(height: 30.v),
          Padding(
              padding: EdgeInsets.only(left: 7.h),
              child: Row(children: [
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Text("Lounge", style: CustomTextStyles.bodyLargeGray40001),
                  SizedBox(height: 8.v),
                  Text("Kigali Airport",
                      style: CustomTextStyles.titleMediumSemiBold_1)
                ]),
                Padding(
                    padding: EdgeInsets.only(left: 28.h),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Guest",
                              style: CustomTextStyles.bodyLargeGray40001),
                          SizedBox(height: 7.v),
                          Text("3",
                              style: CustomTextStyles.titleMediumSourceSansPro)
                        ]))
              ]))
        ]));
  }

  Widget _buildDownloadTicket(BuildContext context) {
    return CustomElevatedButton(
        text: "Download Ticket",
        margin: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 19.v));
  }

  /// Navigates back to the previous screen.
  onTapArrowDown(BuildContext context) {
    Navigator.pop(context);
  }
}
