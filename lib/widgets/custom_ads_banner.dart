import 'package:flutter/material.dart';
import 'dart:async';

class CustomAdsBanner extends StatefulWidget {
  final List<Widget> ads;
  final double bannerHeight;
  final double bannerHorizontalSpacing;

  CustomAdsBanner(
      {required this.ads,
      this.bannerHeight = 100.0,
      this.bannerHorizontalSpacing = 0.0});

  @override
  _CustomAdsBannerState createState() => _CustomAdsBannerState();
}

class _CustomAdsBannerState extends State<CustomAdsBanner>
    with AutomaticKeepAliveClientMixin {
  final pageController = PageController();
  Timer? timer;

  @override
  void initState() {
    super.initState();
    timer = Timer.periodic(Duration(seconds: 10), (Timer timer) {
      if (pageController.position.pixels ==
          pageController.position.maxScrollExtent) {
        pageController.animateTo(pageController.position.minScrollExtent,
            duration: Duration(milliseconds: 800), curve: Curves.easeInOut);
      } else {
        pageController.nextPage(
            duration: Duration(milliseconds: 800), curve: Curves.easeInOut);
      }
    });
  }

  @override
  void dispose() {
    timer?.cancel();
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return SizedBox(
      height: widget.bannerHeight,
      child: PageView.builder(
        controller: pageController,
        scrollDirection: Axis.horizontal,
        itemCount: null,
        itemBuilder: (context, index) {
          final ad = widget.ads[index % widget.ads.length];
          return Padding(
            padding: EdgeInsets.symmetric(
                horizontal: widget.bannerHorizontalSpacing),
            child: ad,
          );
        },
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
