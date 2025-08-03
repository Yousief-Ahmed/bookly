import 'package:bookly/core/util/assets.dart';
import 'package:bookly/core/util/styles.dart';
import 'package:bookly/features/home/presentaion/views/widgets/book_rating.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BestsellerItem extends StatelessWidget {
  const BestsellerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 2.7 / 4,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.r),
                image: DecorationImage(
                  image: AssetImage(AssetsData.kTestItem),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          SizedBox(width: 30.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * .5,
                  child: Text(
                    "The Jungle Book ",
                    style: Styles.textStyle20.copyWith(
                      fontFamily: AssetsData.kGtSectra,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                SizedBox(height: 3.h),
                Text(
                  "Rudyard Kipling",
                  style: Styles.textStyle14.copyWith(color: Colors.grey),
                ),
                SizedBox(height: 3.h),
                Row(
                  children: [
                    Text(
                      "19.99 \$",
                      style: Styles.textStyle20.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Spacer(),
                    BookRating(),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
