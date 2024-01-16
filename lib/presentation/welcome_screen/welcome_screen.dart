import 'package:flutter/material.dart';
import 'package:la_noche/core/app_export.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key})
      : super(
          key: key,
        );

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(
        context,
        AppRoutes.onboardingOneScreen,
      );
    });

    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..repeat(reverse: true);

    _animation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgRectangle1,
                height: 420.v,
                width: 428.h,
              ),
              SizedBox(height: 76.v),
              _buildWelcomeSection(context),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildWelcomeSection(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 32.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Welcome to",
            style: theme.textTheme.displayMedium,
          ),
          SizedBox(height: 23.v),
          AnimatedBuilder(
            animation: _animation,
            builder: (BuildContext context, Widget? child) {
              return Opacity(
                opacity: _animation.value,
                child: Text(
                  "La Noche",
                  style: theme.textTheme.displayLarge,
                ),
              );
            },
          ),
          SizedBox(height: 40.v),
          Container(
            width: 319.h,
            margin: EdgeInsets.only(right: 44.h),
            child: Text(
              "The best in the city : Premier lounge booking services.",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.titleMediumSemiBold_1.copyWith(
                height: 1.50,
              ),
            ),
          ),
        ],
      ),
    );
  }
}