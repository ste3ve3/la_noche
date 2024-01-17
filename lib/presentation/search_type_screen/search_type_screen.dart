import '../search_type_screen/widgets/searchrecommendations_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:la_noche/core/app_export.dart';
import 'package:la_noche/widgets/custom_icon_button.dart';
import 'package:la_noche/widgets/custom_search_view.dart';

class SearchTypeScreen extends StatelessWidget {
  SearchTypeScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.all(24.h),
          child: Column(
            children: [
              CustomSearchView(
                controller: searchController,
                hintText: "Hotel",
              ),
              SizedBox(height: 24.v),
              _buildSearchRecommendations(context),
              SizedBox(height: 32.v),
              _buildRecentSearches(context),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }

  
  Widget _buildSearchRecommendations(BuildContext context) {
    return Wrap(
      runSpacing: 12.v,
      spacing: 12.h,
      children: List<Widget>.generate(
          3, (index) => SearchrecommendationsItemWidget()),
    );
  }

  
  Widget _buildRecentSearches(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Recent",
          style: theme.textTheme.titleMedium,
        ),
        SizedBox(height: 21.v),
        _buildSeventyThree(
          context,
          text: "Amsterdam, Netherlands",
        ),
        SizedBox(height: 24.v),
        _buildSeventyThree(
          context,
          text: "Palazzo Hotel",
        ),
        SizedBox(height: 24.v),
        _buildSeventyThree(
          context,
          text: "Bulgari Hotel",
        ),
        SizedBox(height: 24.v),
        _buildSeventyThree(
          context,
          text: "Ceremony Hall Hotel",
        ),
        SizedBox(height: 24.v),
        _buildSeventyThree(
          context,
          text: "Kigali, Rwanda",
        ),
        SizedBox(height: 24.v),
        _buildSeventyThree(
          context,
          text: "Palms Casino Hotel",
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildSeventyThree(
    BuildContext context, {
    required String text,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(
            top: 3.v,
            bottom: 2.v,
          ),
          child: Text(
            text,
            style: CustomTextStyles.titleMediumGray40001.copyWith(
              color: appTheme.gray40001,
            ),
          ),
        ),
        CustomIconButton(
          height: 28.adaptSize,
          width: 28.adaptSize,
          child: CustomImageView(
            imagePath: ImageConstant.imgIconlyCurvedClose,
          ),
        ),
      ],
    );
  }
}
