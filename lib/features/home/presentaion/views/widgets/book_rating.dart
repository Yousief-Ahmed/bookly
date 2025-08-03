import 'package:bookly/core/util/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(FontAwesomeIcons.solidStar, color: Colors.amber),
        SizedBox(width: 3.w),
        Text('4.8', style: Styles.textStyle16),
        SizedBox(width: 4.w),
        Text('(2390)', style: Styles.textStyle14.copyWith(color: Colors.grey)),
      ],
    );
  }
}
