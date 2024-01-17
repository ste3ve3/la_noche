import 'package:la_noche/presentation/recently_booked_screen/recently_booked_screen.dart';

import '../home_screen_page/widgets/hotels_item_widget.dart';
import '../home_screen_page/widgets/sixty_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:la_noche/core/app_export.dart';

class HomeScreenPage extends StatefulWidget {
  const HomeScreenPage({Key? key}) : super(key: key);

  @override
  HomeScreenPageState createState() => HomeScreenPageState();
}

class HomeScreenPageState extends State<HomeScreenPage>
    with AutomaticKeepAliveClientMixin<HomeScreenPage> {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    child: Column(children: [
                  SizedBox(height: 30.v),
                  Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                          padding: EdgeInsets.only(left: 24.h),
                          child: Column(children: [
                            _buildHotels(context),
                            SizedBox(height: 34.v),
                            _buildRecentlyBooked(context)
                          ])))
                ])))));
  }

  
  Widget _buildHotels(BuildContext context) {
    return SizedBox(
        height: 400.v,
        child: ListView.separated(
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) {
              return SizedBox(width: 24.h);
            },
            itemCount: 2,
            itemBuilder: (context, index) {
              return HotelsItemWidget();
            }));
  }

  
  Widget _buildRecentlyBooked(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
          padding: EdgeInsets.only(right: 24.h),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text("Recently Booked", style: theme.textTheme.titleMedium),
            GestureDetector(
                onTap: () {
                  onTapTxtSeeAll(context);
                },
                child:
                    Text("See All", style: CustomTextStyles.titleMediumPrimary))
          ])),
      SizedBox(height: 16.v),
      Padding(
          padding: EdgeInsets.only(right: 24.h),
          child: Container(
            height: 600,
            child: ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                separatorBuilder: (context, index) {
                  return SizedBox(height: 24.v);
                },
                itemCount: 5,
                itemBuilder: (context, index) {
                  return SixtyItemWidget();
                }),
          ))
    ]);
  }

  /// Navigates to the recentlyBookedScreen when the action is triggered.
  onTapTxtSeeAll(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => RecentlyBookedScreen()),
    );
  }
}
