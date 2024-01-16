import 'package:flutter/material.dart';import 'package:la_noche/core/app_export.dart';import 'package:la_noche/widgets/app_bar/appbar_leading_image.dart';import 'package:la_noche/widgets/app_bar/appbar_title.dart';import 'package:la_noche/widgets/app_bar/custom_app_bar.dart';import 'package:la_noche/widgets/custom_elevated_button.dart';import 'package:la_noche/widgets/custom_pin_code_text_field.dart';class ForgotPasswordTypeOtpScreen extends StatelessWidget {const ForgotPasswordTypeOtpScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 34.h), child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [SizedBox(height: 18.v), Text("Code has been send to +1 111 ******99", style: theme.textTheme.bodyLarge), SizedBox(height: 59.v), CustomPinCodeTextField(context: context, onChanged: (value) {}), SizedBox(height: 62.v), RichText(text: TextSpan(children: [TextSpan(text: "Resend code in ", style: CustomTextStyles.bodyLargeffffffff), TextSpan(text: "55", style: CustomTextStyles.bodyLargeff1aadb6), TextSpan(text: " s", style: CustomTextStyles.bodyLargeffffffff)]), textAlign: TextAlign.left)])), bottomNavigationBar: _buildVerify(context))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 52.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowDown, margin: EdgeInsets.only(left: 24.h, top: 11.v, bottom: 16.v), onTap: () {onTapArrowDown(context);}), title: AppbarTitle(text: "Forgot Password", margin: EdgeInsets.only(left: 16.h))); } 
/// Section Widget
Widget _buildVerify(BuildContext context) { return CustomElevatedButton(text: "Verify", margin: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 49.v), onPressed: () {onTapVerify(context);}); } 

/// Navigates back to the previous screen.
onTapArrowDown(BuildContext context) { Navigator.pop(context); } 
/// Navigates to the createNewPasswordScreen when the action is triggered.
onTapVerify(BuildContext context) { Navigator.pushNamed(context, AppRoutes.createNewPasswordScreen); } 
 }
