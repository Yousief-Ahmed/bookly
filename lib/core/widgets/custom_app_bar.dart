import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget leading;
  final double leadingWidth;
  final List<Widget> action;
  const CustomAppBar({
    super.key,
    required this.leading,
    this.leadingWidth = 0,
    required this.action,
  });
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: leading,
      leadingWidth: leadingWidth,
      actions: [...action],
    );
  }
}
