import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'custom_text.dart';

class ContainerText extends StatelessWidget {
  final String value1;
  final String value2;

  const ContainerText({Key? key, required this.value1, required this.value2}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(0.2),
              borderRadius: const BorderRadius.all(Radius.circular(10)),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 10.w),
              child: CustomText(
                text: value1,
                isShowUpperCase: false,
                size: 14,
                color: Colors.black,
                opacity: .8,
                weight: FontWeight.w600,
                textAlign: TextAlign.start,
              ),
            ),
          ),
        ),
        SizedBox(
          width: 15.w,
        ),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(0.2),
              borderRadius: const BorderRadius.all(Radius.circular(10)),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),
              child: CustomText(
                text: value2,
                isShowUpperCase: false,
                size: 14,
                color: Colors.black,
                weight: FontWeight.w600,
                textAlign: TextAlign.start,
                opacity: .8,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
