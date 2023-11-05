import '../models/slidertext1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:student_hub_app/core/app_export.dart';

// ignore: must_be_immutable
class Slidertext1ItemWidget extends StatelessWidget {
  Slidertext1ItemWidget(
    this.slidertext1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Slidertext1ItemModel slidertext1ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "msg_improve_your_skills".tr,
          style: theme.textTheme.headlineSmall,
        ),
        SizedBox(height: 9.v),
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
