import 'package:bookly/core/util/styles.dart';
import 'package:bookly/features/home/presentaion/views/widgets/book_action_buttons.dart';
import 'package:bookly/features/home/presentaion/views/widgets/book_rating.dart';
import 'package:bookly/features/home/presentaion/views/widgets/custom_book_image.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.w),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.18),
            child: CustomBookImage(),
          ),
          SizedBox(height: 20.h),
          Text("The Jungle Book", style: Styles.textStyle30),
          SizedBox(height: 4.h),
          Opacity(
            opacity: 0.7,
            child: Text(
              "Rudyard Kipling",
              style: Styles.textStyle18.copyWith(
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          SizedBox(height: 5.h),
          BookRating(mainAxisAlignment: MainAxisAlignment.center),
          SizedBox(height: 15.h),
          BookActionButtons(),
        ],
      ),
    );
  }
}
