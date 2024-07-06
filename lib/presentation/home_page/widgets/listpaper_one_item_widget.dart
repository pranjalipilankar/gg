import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../../../theme/custom_button_style.dart';
import '../../../widgets/custom_elevated_button.dart'; // ignore: must_be_immutable

class ListpaperOneItemWidget extends StatelessWidget {
  const ListpaperOneItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 90.h,
      child: Align(
        alignment: Alignment.centerRight,
        child: SizedBox(
          height: 80.v,
          width: 90.h,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgRectangle518,
                height: 80.v,
                width: 90.h,
                radius: BorderRadius.circular(
                  16.h,
                ),
                alignment: Alignment.center,
              ),
              CustomElevatedButton(
                width: 83.h,
                text: "Glass",
                buttonStyle: CustomButtonStyles.none,
                decoration:
                    CustomButtonStyles.gradientGrayFToOnPrimaryDecoration,
                alignment: Alignment.bottomCenter,
              )
            ],
          ),
        ),
      ),
    );
  }
}
