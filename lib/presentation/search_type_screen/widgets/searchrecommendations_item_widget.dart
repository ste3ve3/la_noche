import 'package:flutter/material.dart';
import 'package:la_noche/core/app_export.dart';

// ignore: must_be_immutable
class SearchrecommendationsItemWidget extends StatelessWidget {
  const SearchrecommendationsItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        canvasColor: Colors.transparent,
      ),
      child: RawChip(
        padding: EdgeInsets.symmetric(
          horizontal: 21.h,
          vertical: 9.v,
        ),
        showCheckmark: false,
        labelPadding: EdgeInsets.zero,
        label: Text(
          "All Hotel",
          style: TextStyle(
            color: appTheme.whiteA700,
            fontSize: 16.fSize,
            fontFamily: 'Urbanist',
            fontWeight: FontWeight.w600,
          ),
        ),
        selected: false,
        backgroundColor: Colors.transparent,
        selectedColor: theme.colorScheme.primary,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: theme.colorScheme.primary,
            width: 2.h,
          ),
          borderRadius: BorderRadius.circular(
            19.h,
          ),
        ),
        onSelected: (value) {},
      ),
    );
  }
}
