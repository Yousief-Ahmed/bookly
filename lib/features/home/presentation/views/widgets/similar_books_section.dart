import 'package:bookly/core/util/assets.dart';
import 'package:bookly/core/util/styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/similar_books_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SimilarBooksSection extends StatelessWidget {
  const SimilarBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "You may also like : ",
          style: Styles.textStyle16.copyWith(
            fontWeight: FontWeight.w900,
            fontFamily: AssetsData.kMontserrat,
          ),
        ),
        SizedBox(height: 16.h),
        SimilarBooksListView(),
      ],
    );
  }
}
