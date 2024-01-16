import '../my_bookmarks_screen/widgets/mybookmarks_item_widget.dart';import 'package:flutter/material.dart';import 'package:la_noche/core/app_export.dart';import 'package:la_noche/widgets/app_bar/appbar_leading_image.dart';import 'package:la_noche/widgets/app_bar/appbar_title.dart';import 'package:la_noche/widgets/app_bar/appbar_trailing_iconbutton_one.dart';import 'package:la_noche/widgets/app_bar/appbar_trailing_image.dart';import 'package:la_noche/widgets/app_bar/custom_app_bar.dart';class MyBookmarksScreen extends StatelessWidget {const MyBookmarksScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: Padding(padding: EdgeInsets.only(left: 24.h, top: 24.v, right: 24.h), child: GridView.builder(shrinkWrap: true, gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(mainAxisExtent: 281.v, crossAxisCount: 2, mainAxisSpacing: 24.h, crossAxisSpacing: 24.h), physics: BouncingScrollPhysics(), itemCount: 6, itemBuilder: (context, index) {return MybookmarksItemWidget(onTapImgImage: () {onTapImgImage(context);});})))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 52.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowDown, margin: EdgeInsets.only(left: 24.h, top: 11.v, bottom: 16.v), onTap: () {onTapArrowDown(context);}), title: AppbarTitle(text: "My Bookmarks", margin: EdgeInsets.only(left: 16.h)), actions: [AppbarTrailingIconbuttonOne(imagePath: ImageConstant.imgMegaphone, margin: EdgeInsets.only(left: 24.h, top: 11.v, right: 16.h)), AppbarTrailingImage(imagePath: ImageConstant.imgGridPrimary, margin: EdgeInsets.only(left: 20.h, top: 11.v, right: 40.h))]); } 
onTapImgImage(BuildContext context) {  } 

/// Navigates back to the previous screen.
onTapArrowDown(BuildContext context) { Navigator.pop(context); } 
 }
