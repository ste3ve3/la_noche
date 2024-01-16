import 'dart:async';import 'package:flutter/material.dart';import 'package:google_maps_flutter/google_maps_flutter.dart';import 'package:la_noche/core/app_export.dart';import 'package:la_noche/widgets/app_bar/appbar_leading_image.dart';import 'package:la_noche/widgets/app_bar/appbar_title.dart';import 'package:la_noche/widgets/app_bar/custom_app_bar.dart';
// ignore_for_file: must_be_immutable
class LocationScreen extends StatelessWidget {LocationScreen({Key? key}) : super(key: key);

Completer<GoogleMapController> googleMapController = Completer();

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(body: SizedBox(width: double.maxFinite, child: SizedBox(height: 882.v, width: double.maxFinite, child: Stack(alignment: Alignment.topCenter, children: [_buildImageWidget(context), CustomImageView(imagePath: ImageConstant.imgLinkedin, height: 50.v, width: 42.h, alignment: Alignment.topCenter, margin: EdgeInsets.only(top: 394.v)), _buildAppBarWidget(context)]))))); } 
/// Section Widget
Widget _buildImageWidget(BuildContext context) { return SizedBox(height: 882.v, width: double.maxFinite, child: GoogleMap(mapType: MapType.normal, initialCameraPosition: CameraPosition(target: LatLng(37.43296265331129, -122.08832357078792), zoom: 14.4746), onMapCreated: (GoogleMapController controller) {googleMapController.complete(controller);}, zoomControlsEnabled: false, zoomGesturesEnabled: false, myLocationButtonEnabled: false, myLocationEnabled: false)); } 
/// Section Widget
PreferredSizeWidget _buildAppBarWidget(BuildContext context) { return CustomAppBar(height: 114.v, leadingWidth: 52.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowDown, margin: EdgeInsets.only(left: 24.h, top: 11.v, bottom: 75.v), onTap: () {onTapArrowDown(context);}), title: AppbarTitle(text: "Hotel Location", margin: EdgeInsets.only(left: 16.h, top: 12.v, bottom: 72.v)), styleType: Style.bgGradientnamegray80000namegray900); } 

/// Navigates back to the previous screen.
onTapArrowDown(BuildContext context) { Navigator.pop(context); } 
 }
