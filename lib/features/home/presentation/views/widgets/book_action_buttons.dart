import 'package:bookly/core/util/assets.dart';
import 'package:bookly/core/widgets/custom_button.dart';
import 'package:bookly/features/home/data/model/book_model/book_model.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';

class BookActionButtons extends StatelessWidget {
  final BookModel bookModel;
  const BookActionButtons({super.key, required this.bookModel});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: CustomButton(
              onPressed: () {},

              text: "Free",
              backgroundColor: Colors.white,
              textColor: Colors.black,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16.r),
                bottomLeft: Radius.circular(16.r),
              ),
            ),
          ),
          Expanded(
            child: CustomButton(
              onPressed: () async {
                Uri url = Uri.parse(bookModel.volumeInfo.previewLink!);
                if (await canLaunchUrl(url)) {
                  await launchUrl(url);
                }
              },
              text: "Preview",
              backgroundColor: Colors.deepOrange,
              fontSize: 16.sp,
              fontFamily: AssetsData.kGilroy,
              textColor: Colors.white,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(16.r),
                bottomRight: Radius.circular(16.r),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
