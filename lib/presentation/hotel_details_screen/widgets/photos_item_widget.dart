import 'package:flutter/material.dart';
import 'package:la_noche/core/app_export.dart';

// ignore: must_be_immutable
class PhotosItemWidget extends StatelessWidget {
  const PhotosItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 140.h,
      child: Align(
        alignment: Alignment.centerRight,
        child: CustomImageView(
          imagePath: ImageConstant.imgRectangle7,
          height: 100.v,
          width: 140.h,
          radius: BorderRadius.circular(
            16.h,
          ),
        ),
      ),
    );
  }
}
