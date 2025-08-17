import 'package:bookly/core/util/styles.dart';
import 'package:flutter/widgets.dart';

class CustomError extends StatelessWidget {
  final String errorMsg;
  const CustomError({super.key, required this.errorMsg});

  @override
  Widget build(BuildContext context) {
    return  Text(errorMsg,style: Styles.textStyle18,);
  }
}