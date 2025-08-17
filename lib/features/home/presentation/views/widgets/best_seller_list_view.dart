import 'package:bookly/features/home/presentation/views/widgets/best_seller_item.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.symmetric(vertical: 10.h),
          child: BestSellerItem(),
        );
      },
    );
  }
}
