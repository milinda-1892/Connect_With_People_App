import 'package:connect_with_people_app/utils/constants/colors.dart';
import 'package:connect_with_people_app/utils/constants/image_strings.dart';
import 'package:connect_with_people_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class CSocialButtons extends StatelessWidget {
  const CSocialButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: CColors.grey),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
            onPressed: () {},
            icon: const Image(
              image: AssetImage(CImages.google),
              width: 24,
              height: 24,
            ),
          ),
        ),
        const SizedBox(width: CSizes.spaceBtwItems),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: CColors.grey),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
            onPressed: () {},
            icon: const Image(
              image: AssetImage(CImages.facebook),
              width: 24,
              height: 24,
            ),
          ),
        ),
      ],
    );
  }
}
