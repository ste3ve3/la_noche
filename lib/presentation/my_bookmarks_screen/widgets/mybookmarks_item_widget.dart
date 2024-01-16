import 'package:flutter/material.dart';
import 'package:la_noche/core/app_export.dart';

// ignore: must_be_immutable
class MybookmarksItemWidget extends StatelessWidget {
  MybookmarksItemWidget({
    Key? key,
    this.onTapImgImage,
  }) : super(
          key: key,
        );

  VoidCallback? onTapImgImage;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 18.h,
        vertical: 20.v,
      ),
      decoration: AppDecoration.outlineBlackC.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle4100x100,
            height: 120.v,
            width: 140.h,
            radius: BorderRadius.circular(
              16.h,
            ),
            margin: EdgeInsets.only(left: 1.h),
          ),
          SizedBox(height: 19.v),
          Container(
            width: 129.h,
            margin: EdgeInsets.only(left: 2.h),
            child: Text(
              "De Paris Monte-Carlo Hotel",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.titleMedium!.copyWith(
                height: 1.50,
              ),
            ),
          ),
          SizedBox(height: 1.v),
          Padding(
            padding: EdgeInsets.only(left: 2.h),
            child: Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgSignalYellowA700,
                  height: 12.adaptSize,
                  width: 12.adaptSize,
                  margin: EdgeInsets.symmetric(vertical: 2.v),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 4.h),
                  child: Text(
                    "4.6",
                    style: CustomTextStyles.titleSmallPrimary,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 8.h,
                    bottom: 1.v,
                  ),
                  child: Text(
                    "Kigali Airport",
                    style: CustomTextStyles.bodySmall_1,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 4.v),
          Padding(
            padding: EdgeInsets.only(left: 2.h),
            child: Row(
              children: [
                Text(
                  "29",
                  style: CustomTextStyles.titleLargePrimary,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 3.h,
                    top: 10.v,
                  ),
                  child: Text(
                    "/ day",
                    style: CustomTextStyles.bodySmall10,
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgBookmarkPrimary,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  margin: EdgeInsets.only(left: 48.h),
                  onTap: () {
                    onTapImgImage!.call();
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
