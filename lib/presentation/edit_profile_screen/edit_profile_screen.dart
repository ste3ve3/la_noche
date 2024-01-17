import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_pickers.dart';
import 'package:flutter/material.dart';
import 'package:la_noche/core/app_export.dart';
import 'package:la_noche/widgets/app_bar/appbar_leading_image.dart';
import 'package:la_noche/widgets/app_bar/appbar_title.dart';
import 'package:la_noche/widgets/app_bar/custom_app_bar.dart';
import 'package:la_noche/widgets/custom_drop_down.dart';
import 'package:la_noche/widgets/custom_elevated_button.dart';
import 'package:la_noche/widgets/custom_phone_number.dart';
import 'package:la_noche/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class EditProfileScreen extends StatelessWidget {
  EditProfileScreen({Key? key}) : super(key: key);

  TextEditingController label1Controller = TextEditingController();

  TextEditingController label2Controller = TextEditingController();

  TextEditingController dateController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  List<String> dropdownItemList = ["Item One", "Item Two", "Item Three"];

  Country selectedCountry = CountryPickerUtils.getCountryByPhoneCode('91');

  TextEditingController phoneNumberController = TextEditingController();

  List<String> dropdownItemList1 = ["Item One", "Item Two", "Item Three"];

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
                                horizontal: 24.h, vertical: 43.v),
                            child: Column(children: [
                              _buildLabel1(context),
                              SizedBox(height: 24.v),
                              _buildLabel2(context),
                              SizedBox(height: 24.v),
                              _buildDate(context),
                              SizedBox(height: 24.v),
                              _buildEmail(context),
                              SizedBox(height: 24.v),
                              CustomDropDown(
                                  icon: Container(
                                      margin: EdgeInsets.fromLTRB(
                                          30.h, 18.v, 20.h, 18.v),
                                      child: CustomImageView(
                                          imagePath: ImageConstant
                                              .imgFavoriteWhiteA70020x20,
                                          height: 20.adaptSize,
                                          width: 20.adaptSize)),
                                  hintText: "United States",
                                  items: dropdownItemList,
                                  onChanged: (value) {}),
                              SizedBox(height: 24.v),
                              _buildPhoneNumber(context),
                              SizedBox(height: 24.v),
                              CustomDropDown(
                                  icon: Container(
                                      margin: EdgeInsets.fromLTRB(
                                          30.h, 18.v, 20.h, 18.v),
                                      child: CustomImageView(
                                          imagePath: ImageConstant
                                              .imgFavoriteWhiteA70020x20,
                                          height: 20.adaptSize,
                                          width: 20.adaptSize)),
                                  hintText: "Male",
                                  items: dropdownItemList1,
                                  onChanged: (value) {}),
                              SizedBox(height: 5.v)
                            ]))))),
            bottomNavigationBar: _buildUpdate(context)));
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
        title: AppbarTitle(
            text: "Edit Profile", margin: EdgeInsets.only(left: 16.h)));
  }

  Widget _buildLabel1(BuildContext context) {
    return CustomTextFormField(
        controller: label1Controller, hintText: "Steve Ndicunguye");
  }

  Widget _buildLabel2(BuildContext context) {
    return CustomTextFormField(
        controller: label2Controller, hintText: "Daniel");
  }

  Widget _buildDate(BuildContext context) {
    return CustomTextFormField(
        controller: dateController,
        hintText: "12/27/1995",
        suffix: Container(
            margin: EdgeInsets.fromLTRB(30.h, 18.v, 20.h, 18.v),
            child: CustomImageView(
                imagePath: ImageConstant.imgIconlyCurvedCalendarPrimary,
                height: 20.adaptSize,
                width: 20.adaptSize)),
        suffixConstraints: BoxConstraints(maxHeight: 56.v),
        contentPadding: EdgeInsets.only(left: 20.h, top: 19.v, bottom: 19.v));
  }

  Widget _buildEmail(BuildContext context) {
    return CustomTextFormField(
        controller: emailController,
        hintText: "ndicunguyesteve4@gmail.com",
        textInputType: TextInputType.emailAddress,
        suffix: Container(
            margin: EdgeInsets.fromLTRB(30.h, 20.v, 22.h, 20.v),
            child: CustomImageView(
                imagePath: ImageConstant.imgGroupPrimary,
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

  Widget _buildUpdate(BuildContext context) {
    return CustomElevatedButton(
        text: "Update",
        margin: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 19.v));
  }

  /// Navigates back to the previous screen.
  onTapArrowDown(BuildContext context) {
    Navigator.pop(context);
  }
}
