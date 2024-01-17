import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_pickers.dart';
import 'package:flutter/material.dart';
import 'package:la_noche/core/app_export.dart';
import 'package:la_noche/widgets/app_bar/appbar_leading_image.dart';
import 'package:la_noche/widgets/app_bar/appbar_title.dart';
import 'package:la_noche/widgets/app_bar/custom_app_bar.dart';
import 'package:la_noche/widgets/custom_drop_down.dart';
import 'package:la_noche/widgets/custom_elevated_button.dart';
import 'package:la_noche/widgets/custom_icon_button.dart';
import 'package:la_noche/widgets/custom_phone_number.dart';
import 'package:la_noche/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class FillProfileScreen extends StatelessWidget {
  FillProfileScreen({Key? key}) : super(key: key);

  TextEditingController fullNameEditTextController = TextEditingController();

  TextEditingController dateOfBirthEditTextController = TextEditingController();

  TextEditingController emailEditTextController = TextEditingController();

  Country selectedCountry = CountryPickerUtils.getCountryByPhoneCode('250');

  TextEditingController phoneNumberController = TextEditingController();

  List<String> dropdownItemList = ["Male", "Female", "Other"];

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
                                horizontal: 24.h, vertical: 40.v),
                            child: Column(children: [
                              _buildAvatar(context),
                              SizedBox(height: 24.v),
                              _buildFullNameEditText(context),
                              SizedBox(height: 24.v),
                              _buildDateOfBirthEditText(context),
                              SizedBox(height: 24.v),
                              _buildEmailEditText(context),
                              SizedBox(height: 24.v),
                              _buildPhoneNumber(context),
                              SizedBox(height: 24.v),
                              CustomDropDown(
                                  icon: Container(
                                      margin: EdgeInsets.fromLTRB(
                                          30.h, 18.v, 20.h, 18.v),
                                      child: CustomImageView(
                                          imagePath: ImageConstant.imgFavorite,
                                          height: 20.adaptSize,
                                          width: 20.adaptSize)),
                                  hintText: "Gender",
                                  hintStyle: TextStyle(color: Color.fromARGB(255, 85, 83, 83)),
                                  items: dropdownItemList,
                                  onChanged: (value) {}),
                              SizedBox(height: 5.v)
                            ]))))),
            bottomNavigationBar: _buildContinueButton(context)));
  }

  
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 75.v,
        leadingWidth: 52.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowDown,
            margin: EdgeInsets.only(left: 24.h, top: 13.v, bottom: 13.v),
            onTap: () {
              onTapArrowDown(context);
            }),
        centerTitle: true,
        title: Container(
          margin: EdgeInsets.only(top: 7.v),
          child: AppbarTitle(text: "Fill Your Profile"),
        ));
  }

  
  Widget _buildAvatar(BuildContext context) {
    return SizedBox(
        height: 140.adaptSize,
        width: 140.adaptSize,
        child: Stack(alignment: Alignment.bottomRight, children: [
          CustomImageView(
              imagePath: ImageConstant.imgEllipse,
              height: 140.adaptSize,
              width: 140.adaptSize,
              radius: BorderRadius.circular(70.h),
              alignment: Alignment.center),
          CustomIconButton(
              height: 35.adaptSize,
              width: 35.adaptSize,
              padding: EdgeInsets.all(2.h),
              alignment: Alignment.bottomRight,
              child: CustomImageView(imagePath: ImageConstant.imgEditPrimary))
        ]));
  }

  
  Widget _buildFullNameEditText(BuildContext context) {
    return CustomTextFormField(
        controller: fullNameEditTextController, hintText: "Full Name");
  }

  
  Widget _buildDateOfBirthEditText(BuildContext context) {
    return CustomTextFormField(
        controller: dateOfBirthEditTextController,
        hintText: "Date of Birth",
        suffix: Container(
            margin: EdgeInsets.fromLTRB(30.h, 18.v, 20.h, 18.v),
            child: CustomImageView(
                imagePath: ImageConstant.imgIconlyCurvedCalendar,
                height: 20.adaptSize,
                width: 20.adaptSize)),
        suffixConstraints: BoxConstraints(maxHeight: 56.v),
        contentPadding: EdgeInsets.only(left: 20.h, top: 19.v, bottom: 19.v));
  }

  
  Widget _buildEmailEditText(BuildContext context) {
    return CustomTextFormField(
        controller: emailEditTextController,
        hintText: "Email",
        textInputType: TextInputType.emailAddress,
        suffix: Container(
            margin: EdgeInsets.fromLTRB(30.h, 20.v, 22.h, 20.v),
            child: CustomImageView(
                imagePath: ImageConstant.imgCheckmarkBlueGray10015x15,
                height: 15.adaptSize,
                width: 15.adaptSize)),
        suffixConstraints: BoxConstraints(maxHeight: 56.v),
        contentPadding: EdgeInsets.only(left: 20.h, top: 19.v, bottom: 19.v));
  }

  
  Widget _buildPhoneNumber(BuildContext context) {
    return CustomPhoneNumber(
        country: selectedCountry,
        controller: phoneNumberController,
        onTap: (Country value) {
          selectedCountry = value;
        });
  }

  
  Widget _buildContinueButton(BuildContext context) {
    return CustomElevatedButton(
        text: "Continue",
        margin: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 52.v),
        onPressed: () {
          Navigator.pushNamed(context, AppRoutes.signInScreen);
        },
        );
  }

  /// Navigates back to the previous screen.
  onTapArrowDown(BuildContext context) {
    Navigator.pop(context);
  }
}
