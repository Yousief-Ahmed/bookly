import 'package:bookly/core/util/assets.dart';
import 'package:bookly/core/widgets/custom_loading_indicator.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomBookImage extends StatelessWidget {
  final bool showButton;
  final String imageUrl;
  const CustomBookImage({
    super.key,
    this.showButton = false,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(16.r),
          child: AspectRatio(
            aspectRatio: 2.6 / 4,
            child: CachedNetworkImage(
              fit: BoxFit.fill,
              errorWidget: (context, url, error) {
                return Icon(Icons.error, color: Colors.red, size: 50.sp);
              },
              imageUrl: imageUrl,
            ),
          ),
        ),
        if (showButton)
          Positioned(
            bottom: 10.h,
            right: 1.w,
            child: SizedBox(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: CircleBorder(),
                  backgroundColor: Colors.black.withOpacity(0.3),
                ),
                onPressed: () {},
                child: IconButton(
                  icon: Icon(
                    Icons.play_arrow,
                    color: Colors.white,
                    size: 28.sp,
                  ),
                  onPressed: null, // Add your onPressed logic here
                ),
              ),
            ),
          ),
      ],
    );
  }
}
