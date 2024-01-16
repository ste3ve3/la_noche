import 'package:flutter/material.dart';import 'package:la_noche/core/app_export.dart';import 'package:la_noche/widgets/app_bar/appbar_leading_image.dart';import 'package:la_noche/widgets/app_bar/appbar_title.dart';import 'package:la_noche/widgets/app_bar/custom_app_bar.dart';import 'package:la_noche/widgets/custom_switch.dart';
// ignore_for_file: must_be_immutable
class NotificationSettingsScreen extends StatelessWidget {NotificationSettingsScreen({Key? key}) : super(key: key);

bool isSelectedSwitch = false;

bool isSelectedSwitch1 = false;

bool isSelectedSwitch2 = false;

bool isSelectedSwitch3 = false;

bool isSelectedSwitch4 = false;

bool isSelectedSwitch5 = false;

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 27.v), child: Column(children: [_buildNotificationSettingsAutoLayoutHorizontal1(context), SizedBox(height: 31.v), _buildNotificationSettingsAutoLayoutHorizontal2(context), SizedBox(height: 31.v), _buildNotificationSettingsAutoLayoutHorizontal3(context), SizedBox(height: 31.v), _buildNotificationSettingsAutoLayoutHorizontal4(context), SizedBox(height: 30.v), _buildNotificationSettingsAutoLayoutHorizontal5(context), SizedBox(height: 31.v), _buildNotificationSettingsAutoLayoutHorizontal6(context), SizedBox(height: 5.v)])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(height: 52.v, leadingWidth: 52.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowDown, margin: EdgeInsets.only(left: 24.h, top: 11.v, bottom: 13.v), onTap: () {onTapArrowDown(context);}), title: AppbarTitle(text: "Notifications", margin: EdgeInsets.only(left: 16.h))); } 
/// Section Widget
Widget _buildNotificationSettingsAutoLayoutHorizontal1(BuildContext context) { return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: EdgeInsets.only(bottom: 1.v), child: Text("General Notification", style: CustomTextStyles.titleMediumSemiBold_1)), CustomSwitch(value: isSelectedSwitch, onChange: (value) {isSelectedSwitch = value;})]); } 
/// Section Widget
Widget _buildNotificationSettingsAutoLayoutHorizontal2(BuildContext context) { return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: EdgeInsets.only(bottom: 1.v), child: Text("Sound", style: CustomTextStyles.titleMediumSemiBold_1)), CustomSwitch(value: isSelectedSwitch1, onChange: (value) {isSelectedSwitch1 = value;})]); } 
/// Section Widget
Widget _buildNotificationSettingsAutoLayoutHorizontal3(BuildContext context) { return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: EdgeInsets.only(bottom: 1.v), child: Text("Vibrate", style: CustomTextStyles.titleMediumSemiBold_1)), CustomSwitch(value: isSelectedSwitch2, onChange: (value) {isSelectedSwitch2 = value;})]); } 
/// Section Widget
Widget _buildNotificationSettingsAutoLayoutHorizontal4(BuildContext context) { return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: EdgeInsets.only(top: 3.v), child: Text("App Updates", style: CustomTextStyles.titleMediumSemiBold_1)), CustomSwitch(value: isSelectedSwitch3, onChange: (value) {isSelectedSwitch3 = value;})]); } 
/// Section Widget
Widget _buildNotificationSettingsAutoLayoutHorizontal5(BuildContext context) { return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: EdgeInsets.only(bottom: 1.v), child: Text("New Service Available", style: CustomTextStyles.titleMediumSemiBold_1)), CustomSwitch(value: isSelectedSwitch4, onChange: (value) {isSelectedSwitch4 = value;})]); } 
/// Section Widget
Widget _buildNotificationSettingsAutoLayoutHorizontal6(BuildContext context) { return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: EdgeInsets.only(top: 3.v), child: Text("New tips available", style: CustomTextStyles.titleMediumSemiBold_1)), CustomSwitch(value: isSelectedSwitch5, onChange: (value) {isSelectedSwitch5 = value;})]); } 

/// Navigates back to the previous screen.
onTapArrowDown(BuildContext context) { Navigator.pop(context); } 
 }
