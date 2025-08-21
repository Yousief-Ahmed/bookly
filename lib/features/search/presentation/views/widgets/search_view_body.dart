import 'package:bookly/core/util/assets.dart';
import 'package:bookly/core/util/styles.dart';
import 'package:bookly/features/search/presentation/views/widgets/custom_search_textfield.dart';
import 'package:bookly/features/search/presentation/views/widgets/search_result_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomSearchTextfield(),
          SizedBox(height: 10.h),
          Text(
            "Search results ",
            style: Styles.textStyle16.copyWith(
              fontWeight: FontWeight.w900,
              fontFamily: AssetsData.kMontserrat,
            ),
          ),
          SizedBox(height: 10.h),
          Expanded(child: SearchResultListView()),
        ],
      ),
    );
  }
}
