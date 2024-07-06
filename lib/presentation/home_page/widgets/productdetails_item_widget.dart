import 'package:flutter/material.dart';
import '../../../core/app_export.dart'; // ignore: must_be_immutable

class ProductdetailsItemWidget extends StatelessWidget {
  const ProductdetailsItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 12.h,
        vertical: 5.v,
      ),
      decoration: AppDecoration.outlineBlack.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      width: 60.h,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgMdiRecycle,
            height: 18.adaptSize,
            width: 18.adaptSize,
            alignment: Alignment.center,
          ),
          SizedBox(height: 5.v),
          Text(
            "4.2 kg",
            style: CustomTextStyles.labelMediumMontserratBlack900,
          ),
          SizedBox(height: 1.v),
          Padding(
            padding: EdgeInsets.only(left: 3.h),
            child: Text(
              "recycle",
              style: theme.textTheme.bodySmall,
            ),
          ),
          SizedBox(height: 2.v)
        ],
      ),
    );
  }
}
