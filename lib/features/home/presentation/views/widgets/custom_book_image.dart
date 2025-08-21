import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomBookImage extends StatelessWidget {
  
  final String imageUrl;
  const CustomBookImage({
    super.key,
  
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
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
    );
  }
}
