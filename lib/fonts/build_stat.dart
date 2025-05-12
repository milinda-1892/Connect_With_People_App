import 'package:app/utils/colors.dart';
import 'package:flutter/material.dart';

Widget _buildStat(String count, String label) {
  return Column(
    children: [
      Text(
        count,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 18,
          color: mobileBlackColor,
        ),
      ),
      Text(
        label,
        style: TextStyle(fontWeight: FontWeight.w100, color: Colors.grey),
      ),
    ],
  );
}
