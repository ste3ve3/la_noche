import '../booking_name_screen/widgets/bookingnamechipview_item_widget.dart';import 'package:flutter/material.dart';import 'package:la_noche/core/app_export.dart';import 'package:la_noche/widgets/app_bar/appbar_leading_image.dart';import 'package:la_noche/widgets/app_bar/appbar_title.dart';import 'package:la_noche/widgets/app_bar/custom_app_bar.dart';import 'package:la_noche/widgets/custom_elevated_button.dart';import 'package:la_noche/widgets/custom_text_form_field.dart';
// ignore_for_file: must_be_immutable
class BookingNameScreen extends StatelessWidget {BookingNameScreen({Key? key}) : super(key: key);

TextEditingController bookingNameLabel1Controller = TextEditingController();

TextEditingController bookingNameLabel2Controller = TextEditingController();

TextEditingController bookingNameDateController = TextEditingController();

TextEditingController bookingNameEmailController = TextEditingController();

TextEditingController bookingNamePhoneController = TextEditingController();

GlobalKey<FormState> _formKey = GlobalKey<FormState>();

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(context), body: SizedBox(width: SizeUtils.width, child: SingleChildScrollView(padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom), child: Form(key: _formKey, child: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 27.v), child: Column(children: [_buildBookingNameChipView(context), SizedBox(height: 30.v), _buildBookingNameLabel1(context), SizedBox(height: 24.v), _buildBookingNameLabel2(context), SizedBox(height: 24.v), _buildBookingNameDate(context), SizedBox(height: 24.v), _buildBookingNameEmail(context), SizedBox(height: 24.v), _buildBookingNamePhone(context), SizedBox(height: 5.v)]))))), bottomNavigationBar: _buildContinueButton(context))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(height: 52.v, leadingWidth: 52.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowDown, margin: EdgeInsets.only(left: 24.h, top: 11.v, bottom: 13.v)), title: AppbarTitle(text: "Name of Reservation", margin: EdgeInsets.only(left: 16.h))); } 
/// Section Widget
Widget _buildBookingNameChipView(BuildContext context) { return Wrap(runSpacing: 8.v, spacing: 8.h, children: List<Widget>.generate(3, (index) => BookingnamechipviewItemWidget())); } 
/// Section Widget
Widget _buildBookingNameLabel1(BuildContext context) { return CustomTextFormField(controller: bookingNameLabel1Controller, hintText: "Daniel Austin"); } 
/// Section Widget
Widget _buildBookingNameLabel2(BuildContext context) { return CustomTextFormField(controller: bookingNameLabel2Controller, hintText: "Daniel"); } 
/// Section Widget
Widget _buildBookingNameDate(BuildContext context) { return CustomTextFormField(controller: bookingNameDateController, hintText: "12/27/1995", suffix: Container(margin: EdgeInsets.fromLTRB(30.h, 19.v, 22.h, 19.v), child: CustomImageView(imagePath: ImageConstant.imgThumbsup, height: 16.v, width: 15.h)), suffixConstraints: BoxConstraints(maxHeight: 56.v), contentPadding: EdgeInsets.only(left: 20.h, top: 19.v, bottom: 19.v)); } 
/// Section Widget
Widget _buildBookingNameEmail(BuildContext context) { return CustomTextFormField(controller: bookingNameEmailController, hintText: "user@domain.com", textInputType: TextInputType.emailAddress, suffix: Container(margin: EdgeInsets.fromLTRB(30.h, 20.v, 22.h, 20.v), child: CustomImageView(imagePath: ImageConstant.imgCheckmarkPrimary15x15, height: 15.adaptSize, width: 15.adaptSize)), suffixConstraints: BoxConstraints(maxHeight: 56.v), contentPadding: EdgeInsets.only(left: 20.h, top: 19.v, bottom: 19.v)); } 
/// Section Widget
Widget _buildBookingNamePhone(BuildContext context) { return CustomTextFormField(controller: bookingNamePhoneController, hintText: "+1 123 456 789 000", textInputAction: TextInputAction.done, prefix: Container(margin: EdgeInsets.fromLTRB(20.h, 19.v, 12.h, 19.v), child: CustomImageView(imagePath: ImageConstant.imgThumbsupGray5001, height: 18.v, width: 48.h)), prefixConstraints: BoxConstraints(maxHeight: 56.v), contentPadding: EdgeInsets.only(top: 19.v, right: 30.h, bottom: 19.v)); } 
/// Section Widget
Widget _buildContinueButton(BuildContext context) { return CustomElevatedButton(text: "Continue", margin: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 49.v), onPressed: () {onTapContinueButton(context);}); } 
/// Navigates to the choosePaymentMethodScreen when the action is triggered.
onTapContinueButton(BuildContext context) { Navigator.pushNamed(context, AppRoutes.choosePaymentMethodScreen); } 
 }
