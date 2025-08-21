import 'package:bookly/core/util/assets.dart';
import 'package:bookly/core/util/styles.dart';
import 'package:bookly/features/home/data/model/book_model/book_model.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_action_buttons.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.18),
          child: CustomBookImage(
            imageUrl: bookModel.volumeInfo.imageLinks.thumbnail,
          ),
        ),
        SizedBox(height: 20.h),
        Text(
          bookModel.volumeInfo.title,
          textAlign: TextAlign.center,

          style: Styles.textStyle30.copyWith(fontWeight: FontWeight.w900),
        ),
        SizedBox(height: 4.h),
        Opacity(
          opacity: 0.7,
          child: Text(
            bookModel.volumeInfo.authors!.first,
            textAlign: TextAlign.center,
            style: Styles.textStyle18.copyWith(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w900,
              fontFamily: AssetsData.kMontserrat,
            ),
          ),
        ),
        SizedBox(height: 10.h),
        const BookRating(mainAxisAlignment: MainAxisAlignment.center),
        SizedBox(height: 30.h),
         BookActionButtons( bookModel: bookModel),
      ],
    );
  }
}
