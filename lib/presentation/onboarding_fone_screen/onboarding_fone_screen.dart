import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:green_gather/presentation/onboarding_ftwo_screen/onboarding_ftwo_screen.dart';
import 'package:green_gather/presentation/welcome_screen/welcome_screen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_icon_button.dart';
import 'widgets/slider26195279a_item_widget.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class OnboardingFoneScreen extends StatelessWidget {
  OnboardingFoneScreen({Key? key})
      : super(
          key: key,
        );

  int sliderIndex = 1;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.blue200,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildRowPolygonOne(context),
              _buildStackView(context),
              SizedBox(height: 5.v),
              Container(
                height: 12.v,
                margin: EdgeInsets.only(left: 139.h),
                child: AnimatedSmoothIndicator(
                  activeIndex: 0,
                  count: 3,
                  effect: ScrollingDotsEffect(
                    spacing: 4,
                    activeDotColor: theme.colorScheme.primaryContainer,
                    dotColor: theme.colorScheme.primaryContainer,
                    dotHeight: 12.v,
                    dotWidth: 12.h,
                  ),
                ),
              ),
              SizedBox(height: 15.v),
              Container(
                width: 226.h,
                margin: EdgeInsets.only(left: 41.h),
                child: Text(
                  "Efficient \nWaste Management",
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.headlineLarge,
                ),
              ),
              SizedBox(height: 6.v),
              Align(
                alignment: Alignment.center,
                child: Container(
                  width: 253.h,
                  margin: EdgeInsets.only(
                    left: 45.h,
                    right: 61.h,
                  ),
                  child: Text(
                    "Streamline your recycling efforts with our smart, user-friendly app. Designed to simplify waste management",
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.bodySmall,
                  ),
                ),
              ),
              SizedBox(height: 51.v),
              _buildRowSkip(context),
              SizedBox(height: 5.v)
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildRowPolygonOne(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Padding(
        padding: EdgeInsets.only(left: 28.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 91.v,
              width: 209.h,
              margin: EdgeInsets.only(bottom: 42.v),
              child: Stack(
                alignment: Alignment.bottomRight,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgPolygon1,
                    height: 90.v,
                    width: 94.h,
                    alignment: Alignment.centerLeft,
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Padding(
                      padding: EdgeInsets.only(left: 87.h),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Green",
                            style: theme.textTheme.titleLarge,
                          ),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Text(
                              "Gather",
                              style:
                                  CustomTextStyles.titleLargePrimaryContainer,
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            CustomImageView(
              imagePath: ImageConstant.imgVector1,
              height: 133.v,
              width: 85.h,
            )
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildStackView(BuildContext context) {
    return SizedBox(
      height: 284.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgStar1,
            height: 83.v,
            width: 38.h,
            alignment: Alignment.topRight,
            margin: EdgeInsets.only(top: 21.v),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgEllipse2,
            height: 157.v,
            width: 86.h,
            alignment: Alignment.topLeft,
            margin: EdgeInsets.only(top: 10.v),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              height: 16.adaptSize,
              width: 16.adaptSize,
              margin: EdgeInsets.only(left: 126.h),
              decoration: BoxDecoration(
                color: appTheme.black900,
                borderRadius: BorderRadius.circular(
                  8.h,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              height: 10.adaptSize,
              width: 10.adaptSize,
              margin: EdgeInsets.only(
                right: 44.h,
                bottom: 54.v,
              ),
              decoration: BoxDecoration(
                color: appTheme.black900,
                borderRadius: BorderRadius.circular(
                  5.h,
                ),
              ),
            ),
          ),
          CarouselSlider.builder(
            options: CarouselOptions(
              height: 283.v,
              initialPage: 0,
              autoPlay: true,
              viewportFraction: 1.0,
              enableInfiniteScroll: false,
              scrollDirection: Axis.horizontal,
              onPageChanged: (index, reason) {
                sliderIndex = index;
              },
            ),
            itemCount: 1,
            itemBuilder: (context, index, realIndex) {
              return Slider26195279aItemWidget();
            },
          )
        ],
      ),
    );
  }

  /// Section Widget
/// Section Widget
/// Section Widget
Widget _buildRowSkip(BuildContext context) {
  return Align(
    alignment: Alignment.center,
    child: Padding(
      padding: EdgeInsets.symmetric(horizontal: 35.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, AppRoutes.homePageContainerScreen);
            },
            child: Container(
              margin: EdgeInsets.only(top: 3.v),
              decoration: AppDecoration.outlineBlack,
              child: Text(
                "Skip",
                style: CustomTextStyles.titleLargeOpenSansPrimaryContainer,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context,AppRoutes.onboardingFtwoScreen);
            },
            child: CustomIconButton(
              height: 36.adaptSize,
              width: 36.adaptSize,
              padding: EdgeInsets.all(10.h),
              onPressed: () {},
              child: CustomImageView(
                imagePath: ImageConstant.imgArrowRight,
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
}