import 'package:flutter/material.dart';
import 'package:la_noche/core/app_export.dart';
import 'package:la_noche/presentation/home_screen_page/home_screen_page.dart';
import 'package:la_noche/presentation/my_bookmarks_screen/my_bookmarks_screen.dart';
import 'package:la_noche/presentation/notifications_screen/notifications_screen.dart';
import 'package:la_noche/widgets/app_bar/appbar_leading_image.dart';
import 'package:la_noche/widgets/app_bar/appbar_title.dart';
import 'package:la_noche/widgets/app_bar/appbar_trailing_image.dart';
import 'package:la_noche/widgets/app_bar/custom_app_bar.dart';
import 'package:la_noche/widgets/custom_ad_widget.dart';
import 'package:la_noche/widgets/custom_ads_banner.dart';
import 'package:la_noche/widgets/custom_search_view.dart';
import 'package:la_noche/widgets/custom_small_ad_widget.dart';

class HomeScreenTabContainerPage extends StatefulWidget {
  const HomeScreenTabContainerPage({Key? key}) : super(key: key);

  @override
  HomeScreenTabContainerPageState createState() =>
      HomeScreenTabContainerPageState();
}

// ignore_for_file: must_be_immutable
class HomeScreenTabContainerPageState extends State<HomeScreenTabContainerPage>
    with TickerProviderStateMixin {
  TextEditingController searchController = TextEditingController();

  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 25.v),
                    child: Column(children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: EdgeInsets.only(left: 24.h),
                              child: Text("Hello, Steve 👋",
                                  style: theme.textTheme.headlineLarge))),
                      SizedBox(height: 20.v),
                      CustomAdsBanner(
                        ads: [
                          CustomSmallAdWidget(
                            imageUrl:
                                'http://filemanager.ric-house.com/file/0ca2y7ef7.jpeg',
                            title: 'Advertisment Title 1',
                            description:
                                'Add a guest mode feature where someone will be able to view some basic functions without having a membership',
                            url: 'https://www.google.com',
                          ),
                          CustomSmallAdWidget(
                            imageUrl:
                                'http://filemanager.ric-house.com/file/0ca2y7ef7.jpeg',
                            title: 'Advertisment Title 2',
                            description:
                                'Remove the popular and trending menus and Add a Menu Tab that will contain some drinks or other stuffs on the menus',
                            url: 'https://www.google.com',
                          ),
                          CustomSmallAdWidget(
                            imageUrl:
                                'http://filemanager.ric-house.com/file/0ca2y7ef7.jpeg',
                            title: 'Advertisment Title 3',
                            description:
                                ' Add an events ( Trending ) feature which which will show the events in the lounge',
                            url: 'https://www.google.com',
                          ),
                        ],
                        bannerHorizontalSpacing: 20,
                      ),
                      SizedBox(height: 23.v),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 24.h),
                          child: CustomSearchView(
                              autofocus: false,
                              controller: searchController,
                              hintText: "Search")),
                      SizedBox(height: 31.v),
                      _buildTabview(context),
                      SizedBox(
                          height: 1312.v,
                          child: TabBarView(
                              controller: tabviewController,
                              children: [
                                HomeScreenPage(),
                                HomeScreenPage(),
                                HomeScreenPage()
                              ])),
                    ])))));
  }

  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 76.v,
        leadingWidth: 76.h,
        leading: Container(
          margin: EdgeInsets.only(left: 17, top: 5, right: 8),
          width: 150,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: theme.colorScheme.primary,
          ),
          child: AppbarLeadingImage(
            imagePath: ImageConstant.imgFloatingIcon,
            margin: EdgeInsets.all(0),
          ),
        ),
        title: AppbarTitle(text: "La noche", margin: EdgeInsets.only(top: 5)),
        actions: [
          AppbarTrailingImage(
            imagePath: ImageConstant.imgIcons,
            margin: EdgeInsets.only(left: 24.h, top: 9.v, right: 11.h),
            onTap: onTapNotificationIcon,
          ),
          AppbarTrailingImage(
            imagePath: ImageConstant.imgBookmark,
            margin: EdgeInsets.only(left: 24.h, top: 9.v, right: 35.h),
            onTap: onTapBookmarkIcon,
          ),
        ]);
  }

  Widget _buildTabview(BuildContext context) {
    return Container(
        height: 38.v,
        width: 376.h,
        child: TabBar(
            controller: tabviewController,
            tabAlignment: TabAlignment.start,
            isScrollable: true,
            labelPadding: EdgeInsets.zero,
            labelColor: appTheme.whiteA700,
            labelStyle: TextStyle(
                fontSize: 16.fSize,
                fontFamily: 'Urbanist',
                fontWeight: FontWeight.w600),
            unselectedLabelColor: theme.colorScheme.primary,
            unselectedLabelStyle: TextStyle(
                fontSize: 16.fSize,
                fontFamily: 'Urbanist',
                fontWeight: FontWeight.w600),
            indicator: BoxDecoration(
                color: theme.colorScheme.primary,
                borderRadius: BorderRadius.circular(19.h)),
            tabs: [
              Tab(
                  child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      child: Text(
                        "Recommended",
                        overflow: TextOverflow.ellipsis,
                      ))),
              Tab(
                  child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      child: Text(
                        "Popular",
                        overflow: TextOverflow.ellipsis,
                      ))),
              Tab(
                  child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      child: Text(
                        "Trending",
                        overflow: TextOverflow.ellipsis,
                      )))
            ]));
  }

  /// Navigates to the notificationsScreen when the action is triggered.
  onTapNotificationIcon(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => NotificationsScreen()),
    );
  }

  onTapBookmarkIcon(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => MyBookmarksScreen()),
    );
  }
}
