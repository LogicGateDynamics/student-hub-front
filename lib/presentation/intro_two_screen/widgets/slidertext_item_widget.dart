import '../models/slidertext_item_model.dart';
import 'package:flutter/material.dart';
import 'package:student_hub_app/core/app_export.dart';

// ignore: must_be_immutable
class SlidertextItemWidget extends StatelessWidget {
  SlidertextItemWidget(
    this.slidertextItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  SlidertextItemModel slidertextItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "msg_find_a_space_for".tr,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
          style: theme.textTheme.headlineSmall!.copyWith(
            height: 1.33,
          ),
        ),
        SizedBox(height: 6.v),
        Text(
          "msg_quarantine_is_the".tr,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
          style: theme.textTheme.bodyMedium!.copyWith(
            height: 1.50,
          ),
        ),
      ],
    );
  }
}
