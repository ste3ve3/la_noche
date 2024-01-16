import '../recently_booked_screen/widgets/recentlybookedlist_item_widget.dart';import 'package:flutter/material.dart';import 'package:la_noche/core/app_export.dart';import 'package:la_noche/widgets/app_bar/appbar_leading_image.dart';import 'package:la_noche/widgets/app_bar/appbar_title.dart';import 'package:la_noche/widgets/app_bar/appbar_trailing_iconbutton_one.dart';import 'package:la_noche/widgets/app_bar/appbar_trailing_image.dart';import 'package:la_noche/widgets/app_bar/custom_app_bar.dart';class RecentlyBookedScreen extends StatelessWidget {const RecentlyBookedScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: Padding(padding: EdgeInsets.only(left: 24.h, top: 18.v, right: 24.h), child: ListView.separated(physics: BouncingScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 24.v);}, itemCount: 5, itemBuilder: (context, index) {return RecentlybookedlistItemWidget();})))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 52.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowDown, margin: EdgeInsets.only(left: 24.h, top: 11.v, bottom: 16.v), onTap: () {onTapArrowDown(context);}), title: AppbarTitle(text: "Recently Booked", margin: EdgeInsets.only(left: 16.h)), actions: [AppbarTrailingIconbuttonOne(imagePath: ImageConstant.imgUserPrimary28x28, margin: EdgeInsets.only(left: 24.h, top: 11.v, right: 16.h)), AppbarTrailingImage(imagePath: ImageConstant.imgGrid, margin: EdgeInsets.only(left: 20.h, top: 11.v, right: 40.h))]); } 

/// Navigates back to the previous screen.
onTapArrowDown(BuildContext context) { Navigator.pop(context); } 
 }
