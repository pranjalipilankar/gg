import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_icon_button.dart';
import 'widgets/sliderobjects_item_widget.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class OnboardingFthreeScreen extends StatelessWidget {
  OnboardingFthreeScreen({Key? key})
      : super(
          key: key,
        );

  int sliderIndex = 1;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.pinkA100,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: SizedBox(
                  height: 410.v,
                  width: 342.h,
                  child: Stack(
                    alignment: Alignment.topLeft,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgContrastGray300,
                        height: 64.v,
                        width: 75.h,
                        alignment: Alignment.topLeft,
                        margin: EdgeInsets.only(left: 33.h),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgEllipse2157x153,
                        height: 157.v,
                        width: 153.h,
                        alignment: Alignment.topLeft,
                        margin: EdgeInsets.only(top: 54.v),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgStar11,
                        height: 85.v,
                        width: 89.h,
                        alignment: Alignment.topRight,
                        margin: EdgeInsets.only(
                          top: 91.v,
                          right: 80.h,
                        ),
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          height: 16.adaptSize,
                          width: 16.adaptSize,
                          margin: EdgeInsets.only(
                            left: 120.h,
                            top: 148.v,
                          ),
                          decoration: BoxDecoration(
                            color: appTheme.black900,
                            borderRadius: BorderRadius.circular(
                              8.h,
                            ),
                          ),
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgVector1Cyan500,
                        height: 104.v,
                        width: 102.h,
                        alignment: Alignment.topRight,
                        margin: EdgeInsets.only(
                          top: 17.v,
                          right: 3.h,
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgUser,
                        height: 20.v,
                        width: 22.h,
                        alignment: Alignment.topLeft,
                        margin: EdgeInsets.only(
                          left: 106.h,
                          top: 99.v,
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgUserGray600,
                        height: 28.v,
                        width: 26.h,
                        alignment: Alignment.topLeft,
                        margin: EdgeInsets.only(
                          left: 86.h,
                          top: 161.v,
                        ),
                      ),
                      Align(
                        alignment: Alignment.topCenter,
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: 115.h,
                            top: 47.v,
                            right: 105.h,
                          ),
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
                                  style: CustomTextStyles
                                      .titleLargePrimaryContainer,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      _buildSliderobjects(context)
                    ],
                  ),
                ),
              ),
              SizedBox(height: 14.v),
              SizedBox(
                height: 12.v,
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
              SizedBox(height: 26.v),
              Container(
                width: 255.h,
                margin: EdgeInsets.only(
                  left: 44.h,
                  right: 61.h,
                ),
                child: Text(
                  "Ready to make a move?",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.headlineLarge,
                ),
              ),
              SizedBox(height: 16.v),
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  width: 291.h,
                  margin: EdgeInsets.only(
                    left: 44.h,
                    right: 22.h,
                  ),
                  child: Text(
                    "You’re all set! Start your journey towards a more sustainable lifestyle with Green Gather.",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.bodySmall,
                  ),
                ),
              ),
              SizedBox(height: 96.v),
              _buildRowarrowright(context),
              SizedBox(height: 5.v)
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSliderobjects(BuildContext context) {
    return CarouselSlider.builder(
      options: CarouselOptions(
        height: 229.v,
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
        return SliderobjectsItemWidget();
      },
    );
  }

  /// Section Widget
Widget _buildRowarrowright(BuildContext context) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 36.h),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {
            // Navigate to the next page
            // Replace 'NextScreen()' with the appropriate screen widget
            Navigator.pushNamed(context, AppRoutes.onboardingFtwoScreen);
          },
          child: CustomIconButton(
            height: 36.adaptSize,
            width: 36.adaptSize,
            padding: EdgeInsets.all(10.h),
            onPressed: () {},
            child: CustomImageView(
              imagePath: ImageConstant.imgArrowRightPrimary,
            ),
          ),
        ),
        CustomElevatedButton(
          height: 36.v,
          width: 111.h,
          text: "Get Started",
          buttonTextStyle: theme.textTheme.titleMedium!,
          onPressed: () {
            // Navigate to the last onboarding screen
            Navigator.pushNamed(context, AppRoutes.homePageContainerScreen);
          },
        )
      ],
    ),
  );
}
}