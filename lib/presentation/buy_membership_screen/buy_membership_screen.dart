import 'package:flutter/material.dart';
import 'package:la_noche/core/app_export.dart';
import 'package:la_noche/presentation/card_added_screen/card_added_screen.dart';
import 'package:la_noche/widgets/app_bar/appbar_leading_image.dart';
import 'package:la_noche/widgets/app_bar/appbar_title.dart';
import 'package:la_noche/widgets/app_bar/appbar_trailing_image.dart';
import 'package:la_noche/widgets/app_bar/custom_app_bar.dart';
import 'package:la_noche/widgets/custom_elevated_button.dart';

class BuyMembershipScreen extends StatelessWidget {
  const BuyMembershipScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: SingleChildScrollView(
              child: Container(
                  width: double.maxFinite,
                  padding:
                      EdgeInsets.symmetric(horizontal: 24.h, vertical: 23.v),
                  child: Column(children: [
                    _buildBasicPlanCard(context),
                    SizedBox(height: 28.v),
                    _buildPremiumPlanCard(context),
                    SizedBox(height: 28.v),
                  ])),
            ),
            ));
  }

  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 52.h,
        height: 75.v,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowDown,
            margin: EdgeInsets.only(left: 24.h, top: 11.v, bottom: 16.v),
            onTap: () {
              onTapArrowDown(context);
            }),
        title: AppbarTitle(
            text: "Buy Membership", margin: EdgeInsets.only(left: 16.h)));
  }

  Widget _buildBasicPlanCard(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 28.h, vertical: 27.v),
        decoration: AppDecoration.fillBlueGray
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder16),
        child: Column(
          mainAxisSize: MainAxisSize.min, 
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
          Text(
            "Basic Plan",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top:20.0),
                child: Text(
                  "\$",
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              ),
              Text(
                "9.99",
                style: TextStyle(
                  fontSize: 45,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top:20.0),
                child: Text(
                  "/year",
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
              ),
            ],
          ),
          Column(
            children: [
              SizedBox(height: 20.v),
              Row(
                children: [
                  Icon(Icons.close, color: Colors.red),
                  SizedBox(width: 8),
                  Text(
                    "Access to all lounge facilities.",
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20.v),
              Row(
                children: [
                  Icon(Icons.close, color: Colors.red),
                  SizedBox(width: 8),
                  Text(
                    "Priority Access",
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20.v),
              Row(
                children: [
                  Icon(Icons.close, color: Colors.red),
                  SizedBox(width: 8),
                  Text(
                    "Personalized Updates",
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20.v),
              Row(
                children: [
                  Icon(Icons.check, color: Colors.green),
                  SizedBox(width: 8),
                  Text(
                    "Services Discounts",
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20.v),
              Row(
                children: [
                  Icon(Icons.check, color: Colors.green),
                  SizedBox(width: 8),
                  Text(
                    "Exclusive Events and Offers",
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20.v),
              Row(
                children: [
                  Icon(Icons.check, color: Colors.green),
                  SizedBox(width: 8),
                  Text(
                    "Flexible Booking Changes",
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20.v),
              Row(
                children: [
                  Icon(Icons.check, color: Colors.green),
                  SizedBox(width: 8),
                  Text(
                    "Loyalty Program",
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20.v),
              Row(
                children: [
                  Icon(Icons.check, color: Colors.green),
                  SizedBox(width: 8),
                  Text(
                    "24/7 Customer Support",
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 25.v),
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

  Widget _buildPremiumPlanCard(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 28.h, vertical: 27.v),
        decoration: AppDecoration.fillBlueGray
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder16),
        child: Column(
          mainAxisSize: MainAxisSize.min, 
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
          Text(
            "Premium Plan",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top:20.0),
                child: Text(
                  "\$",
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              ),
              Text(
                "26.4",
                style: TextStyle(
                  fontSize: 45,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top:20.0),
                child: Text(
                  "/year",
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
              ),
            ],
          ),
          Column(
            children: [
              SizedBox(height: 20.v),
              Row(
                children: [
                  Icon(Icons.check, color: Colors.green),
                  SizedBox(width: 8),
                  Text(
                    "Access to all lounge facilities.",
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20.v),
              Row(
                children: [
                  Icon(Icons.check, color: Colors.green),
                  SizedBox(width: 8),
                  Text(
                    "Priority Access",
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20.v),
              Row(
                children: [
                  Icon(Icons.check, color: Colors.green),
                  SizedBox(width: 8),
                  Text(
                    "Personalized Updates",
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20.v),
              Row(
                children: [
                  Icon(Icons.check, color: Colors.green),
                  SizedBox(width: 8),
                  Text(
                    "Services Discounts",
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20.v),
              Row(
                children: [
                  Icon(Icons.check, color: Colors.green),
                  SizedBox(width: 8),
                  Text(
                    "Exclusive Events and Offers",
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20.v),
              Row(
                children: [
                  Icon(Icons.check, color: Colors.green),
                  SizedBox(width: 8),
                  Text(
                    "Flexible Booking Changes",
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20.v),
              Row(
                children: [
                  Icon(Icons.check, color: Colors.green),
                  SizedBox(width: 8),
                  Text(
                    "Loyalty Program",
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20.v),
              Row(
                children: [
                  Icon(Icons.check, color: Colors.green),
                  SizedBox(width: 8),
                  Text(
                    "24/7 Customer Support",
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 25.v),
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

onTapBookNow(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeScreenContainerScreen);
  }

  onTapArrowDown(BuildContext context) {
    Navigator.pop(context);
  }
}
