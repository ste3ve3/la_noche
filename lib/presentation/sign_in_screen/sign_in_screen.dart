import 'package:flutter/material.dart';
import 'package:la_noche/core/app_export.dart';
import 'package:la_noche/widgets/app_bar/appbar_leading_image.dart';
import 'package:la_noche/widgets/app_bar/custom_app_bar.dart';
import 'package:la_noche/widgets/custom_checkbox_button.dart';
import 'package:la_noche/widgets/custom_elevated_button.dart';
import 'package:la_noche/widgets/custom_text_form_field.dart';


// ignore_for_file: must_be_immutable
class SignInScreen extends StatelessWidget {
  SignInScreen({Key? key}) : super(key: key);

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  bool rememberme = false;

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: Form(
                        key: _formKey,
                        child: Container(
                            width: double.maxFinite,
                            padding: EdgeInsets.symmetric(
                                horizontal: 24.h, vertical: 20.v),
                            child: Column(children: [
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Container(
                                      child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("Login",
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                          style: theme.textTheme.displayMedium!
                                              .copyWith(height: 1.50)),
                                      Text(
                                          "Enter your email and password to continue",
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          style: theme.textTheme.bodyLarge!
                                              .copyWith(height: 1.50)),
                                    ],
                                  ))),
                              SizedBox(height: 50.v),
                              _buildLogIn(context),
                              SizedBox(height: 57.v),
                              _buildOrDivider(context),
                              SizedBox(height: 33.v),
                              _buildSocial(context),
                              SizedBox(height: 49.v),
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                        padding: EdgeInsets.only(bottom: 1.v),
                                        child: Text("Don’t have an account?",
                                            style: CustomTextStyles
                                                .bodyMediumGray50)),
                                    GestureDetector(
                                        onTap: () {
                                          onTapTxtSignUp(context);
                                        },
                                        child: Padding(
                                            padding: EdgeInsets.only(left: 8.h),
                                            child: Text("Sign up",
                                                style: CustomTextStyles
                                                    .titleSmallPrimary)))
                                  ])
                            ])))))));
  }

  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 50.v,
        leadingWidth: 427.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgGroup,
            margin: EdgeInsets.fromLTRB(28.h, 17.v, 380.h, 17.v)));
  }

  Widget _buildLogIn(BuildContext context) {
    return Column(children: [
      CustomTextFormField(
          autofocus: false,
          controller: emailController,
          hintText: "Email",
          textInputType: TextInputType.emailAddress,
          prefix: Container(
              margin: EdgeInsets.fromLTRB(20.h, 20.v, 12.h, 20.v),
              child: CustomImageView(
                  imagePath: ImageConstant.imgCheckmarkBlueGray100,
                  height: 20.adaptSize,
                  width: 20.adaptSize)),
          prefixConstraints: BoxConstraints(maxHeight: 60.v),
          contentPadding:
              EdgeInsets.only(top: 21.v, right: 30.h, bottom: 21.v)),
      SizedBox(height: 24.v),
      CustomTextFormField(
          autofocus: false,
          controller: passwordController,
          hintText: "Password",
          textInputAction: TextInputAction.done,
          textInputType: TextInputType.visiblePassword,
          prefix: Container(
              margin: EdgeInsets.fromLTRB(20.h, 20.v, 12.h, 20.v),
              child: CustomImageView(
                  imagePath: ImageConstant.imgLocation,
                  height: 20.adaptSize,
                  width: 20.adaptSize)),
          prefixConstraints: BoxConstraints(maxHeight: 60.v),
          suffix: Container(
              margin: EdgeInsets.fromLTRB(30.h, 20.v, 20.h, 20.v),
              child: CustomImageView(
                  imagePath: ImageConstant.imgEyeBlueGray100,
                  height: 20.adaptSize,
                  width: 20.adaptSize)),
          suffixConstraints: BoxConstraints(maxHeight: 60.v),
          obscureText: true,
          contentPadding: EdgeInsets.symmetric(vertical: 21.v)),
      SizedBox(height: 24.v),
      Align(
          alignment: Alignment.centerLeft,
          child: CustomCheckboxButton(
              alignment: Alignment.centerLeft,
              text: "Remember me",
              value: rememberme,
              padding: EdgeInsets.symmetric(vertical: 2.v),
              onChange: (value) {
                rememberme = value;
              })),
      SizedBox(height: 24.v),
      CustomElevatedButton(
        text: "Sign In",
        onPressed: () {onTapSignInButton(context);}
      ),
      SizedBox(height: 28.v),
      GestureDetector(
          onTap: () {
            onTapTxtForgotThePassword(context);
          },
          child: Text("Forgot the password?",
              style: CustomTextStyles.titleMediumPrimarySemiBold))
    ]);
  }

  Widget _buildOrDivider(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                  padding: EdgeInsets.only(top: 11.v, bottom: 9.v),
                  child: SizedBox(width: 96.h, child: Divider())),
              Text("or", style: CustomTextStyles.titleMediumGray50),
              Padding(
                  padding: EdgeInsets.only(top: 11.v, bottom: 9.v),
                  child: SizedBox(width: 96.h, child: Divider()))
            ]));
  }

  Widget _buildSocial(BuildContext context) {
    return Column(children: [
      CustomElevatedButton(
          height: 60.v,
          text: "Continue with Google",
          leftIcon: Container(
              margin: EdgeInsets.only(right: 11.h),
              child: CustomImageView(
                  imagePath: ImageConstant.imgFrame,
                  height: 24.adaptSize,
                  width: 24.adaptSize)),
          buttonStyle: CustomButtonStyles.fillBlueGrayTL16,
          buttonTextStyle: CustomTextStyles.titleMediumSemiBold,
          onPressed: () {}),
    ]);
  }

  onTapSignInButton(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.buyMembershipScreen);
  }

  onTapTxtForgotThePassword(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.forgotPasswordScreen);
  }

  onTapTxtSignUp(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signUpBlankScreen);
  }
}
