import 'package:flutter/material.dart';
import 'package:la_noche/core/app_export.dart';

// ignore: must_be_immutable
class ReviewfilterItemWidget extends StatelessWidget {
  const ReviewfilterItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 83.h,
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 20.h,
            vertical: 9.v,
          ),
          decoration: AppDecoration.fillPrimary.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder20,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgSignal,
                height: 16.adaptSize,
                width: 16.adaptSize,
                margin: EdgeInsets.symmetric(vertical: 2.v),
              ),
              Padding(
                padding: EdgeInsets.only(left: 7.h),
                child: Text(
                  "All",
                  style: CustomTextStyles.titleMedium16,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
