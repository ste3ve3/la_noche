import '../refund_method_screen/widgets/refundmethod_item_widget.dart';import 'package:flutter/material.dart';import 'package:la_noche/core/app_export.dart';import 'package:la_noche/widgets/app_bar/appbar_leading_image.dart';import 'package:la_noche/widgets/app_bar/appbar_title.dart';import 'package:la_noche/widgets/app_bar/custom_app_bar.dart';import 'package:la_noche/widgets/custom_elevated_button.dart';class RefundMethodScreen extends StatelessWidget {const RefundMethodScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 22.v), child: Column(children: [SizedBox(height: 4.v), Align(alignment: Alignment.centerLeft, child: Container(width: 357.h, margin: EdgeInsets.only(right: 22.h), child: Text("Please select a payment refund method (only 80% will be refunded).", maxLines: 2, overflow: TextOverflow.ellipsis, style: CustomTextStyles.bodyLarge18.copyWith(height: 1.50)))), SizedBox(height: 22.v), _buildRefundMethod(context), Spacer(), Row(mainAxisAlignment: MainAxisAlignment.center, children: [Text("Paid: 479.5", style: CustomTextStyles.bodyLarge18), Padding(padding: EdgeInsets.only(left: 16.h), child: Text("Refund: 383.8", style: theme.textTheme.titleMedium))])])), bottomNavigationBar: _buildConfirmCancellation(context))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 52.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowDown, margin: EdgeInsets.only(left: 24.h, top: 11.v, bottom: 16.v), onTap: () {onTapArrowDown(context);}), title: AppbarTitle(text: "Cancel Hotel Booking", margin: EdgeInsets.only(left: 16.h))); } 
/// Section Widget
Widget _buildRefundMethod(BuildContext context) { return ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 28.v);}, itemCount: 4, itemBuilder: (context, index) {return RefundmethodItemWidget();}); } 
/// Section Widget
Widget _buildConfirmCancellation(BuildContext context) { return CustomElevatedButton(text: "Confirm Cancellation", margin: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 48.v)); } 

/// Navigates back to the previous screen.
onTapArrowDown(BuildContext context) { Navigator.pop(context); } 
 }
