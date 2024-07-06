import 'package:flutter/material.dart';
import '../../../core/app_export.dart'; // ignore: must_be_immutable

class SliderobjectsItemWidget extends StatelessWidget {
  const SliderobjectsItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: SizedBox(
        height: 229.v,
        width: 326.h,
        child: Stack(
          alignment: Alignment.center,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgObjects,
              height: 190.v,
              width: 266.h,
              alignment: Alignment.center,
            ),
            CustomImageView(
              imagePath: ImageConstant.imgImage1,
              height: 229.v,
              width: 326.h,
              alignment: Alignment.center,
            )
          ],
        ),
      ),
    );
  }
}
