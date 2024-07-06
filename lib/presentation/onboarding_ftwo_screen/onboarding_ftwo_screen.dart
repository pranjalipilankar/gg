import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_icon_button.dart';

class OnboardingFtwoScreen extends StatelessWidget {
  const OnboardingFtwoScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.amber200,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(
                height: 436.v,
                width: double.maxFinite,
                child: Stack(
                  alignment: Alignment.topLeft,
                  children: [
                    _buildMarketStack(context),
                    CustomImageView(
                      imagePath: ImageConstant.imgContrast,
                      height: 82.v,
                      width: 86.h,
                      alignment: Alignment.topLeft,
                      margin: EdgeInsets.only(left: 30.h),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgVector1Pink400,
                      height: 137.v,
                      width: 93.h,
                      alignment: Alignment.topRight,
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgEllipse2155x78,
                      height: 155.v,
                      width: 78.h,
                      alignment: Alignment.bottomLeft,
                      margin: EdgeInsets.only(bottom: 124.v),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgStar185x89,
                      height: 85.v,
                      width: 89.h,
                      alignment: Alignment.topRight,
                      margin: EdgeInsets.only(
                        top: 135.v,
                        right: 11.h,
                      ),
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: 115.h,
                          top: 47.v,
                          right: 123.h,
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
                                style:
                                    CustomTextStyles.titleLargePrimaryContainer,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: SizedBox(
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
                    )
                  ],
                ),
              ),
              SizedBox(height: 29.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  width: 253.h,
                  margin: EdgeInsets.only(
                    left: 41.h,
                    right: 65.h,
                  ),
                  child: Text(
                    "Your Recycling Assistant",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.headlineLarge,
                  ),
                ),
              ),
              SizedBox(height: 19.v),
              Container(
                width: 289.h,
                margin: EdgeInsets.only(
                  left: 41.h,
                  right: 29.h,
                ),
                child: Text(
                  "Quick tips on navigating the app for maximum benefit – from tracking your recycling history to receiving reminders.",
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.bodySmall,
                ),
              ),
              SizedBox(height: 75.v),
              _buildArrowRightRow(context),
              SizedBox(height: 5.v)
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildMarketStack(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: 354.v,
        width: double.maxFinite,
        margin: EdgeInsets.only(bottom: 6.v),
        child: Stack(
          alignment: Alignment.centerRight,
          children: [
            CustomImageView(
              imagePath: ImageConstant.img28695003Market,
              height: 354.v,
              width: 360.h,
              alignment: Alignment.center,
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: EdgeInsets.only(
                  left: 129.h,
                  right: 38.h,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 10.adaptSize,
                      width: 10.adaptSize,
                      decoration: BoxDecoration(
                        color: appTheme.black900,
                        borderRadius: BorderRadius.circular(
                          5.h,
                        ),
                      ),
                    ),
                    SizedBox(height: 206.v),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                        height: 16.adaptSize,
                        width: 16.adaptSize,
                        decoration: BoxDecoration(
                          color: appTheme.black900,
                          borderRadius: BorderRadius.circular(
                            8.h,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildArrowRightRow(BuildContext context) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 36.h),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {
            // Navigate to the previous page
            // Replace 'PreviousScreen()' with the appropriate screen widget
            Navigator.pushNamed(context,AppRoutes.onboardingFoneScreen);
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
        GestureDetector(
          onTap: () {
            // Navigate to the next page
            // Replace 'NextScreen()' with the appropriate screen widget
            Navigator.pushNamed(context, AppRoutes.onboardingFthreeScreen);
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
  );
}
}