import '../filter_result_page/widgets/filterresult_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:la_noche/core/app_export.dart';
import 'package:la_noche/widgets/custom_icon_button.dart';

// ignore_for_file: must_be_immutable
class FilterResultPage extends StatefulWidget {
  const FilterResultPage({Key? key})
      : super(
          key: key,
        );

  @override
  FilterResultPageState createState() => FilterResultPageState();
}

class FilterResultPageState extends State<FilterResultPage>
    with AutomaticKeepAliveClientMixin<FilterResultPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 24.v),
                _buildRecommendedSection(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  
  Widget _buildRecommendedSection(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.h),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: 2.v,
                  bottom: 3.v,
                ),
                child: Text(
                  "Recommended (86,379)",
                  style: theme.textTheme.titleMedium,
                ),
              ),
              
            ],
          ),
          SizedBox(height: 22.v),
          ListView.separated(
            physics: BouncingScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                height: 24.v,
              );
            },
            itemCount: 5,
            itemBuilder: (context, index) {
              return FilterresultItemWidget();
            },
          ),
        ],
      ),
    );
  }
}
