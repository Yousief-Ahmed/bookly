import 'package:bookly/core/util/styles.dart';
import 'package:bookly/features/home/presentaion/views/widgets/bestSeller_list_view.dart';
import 'package:bookly/features/home/presentaion/views/widgets/book_list_view.dart';

import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(child: BookListView()),
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20.h),
                Text('Best Seller', style: Styles.textStyle18),
                SizedBox(height: 10.h),
              ],
            ),
          ),
        ),

        SliverFillRemaining(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.w),
            child: BestsellerListView(),
          ),
        ),
      ],
    );
  }
}
