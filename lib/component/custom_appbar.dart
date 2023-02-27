import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget? flexibleSpace;
  final Widget? title;
  final Widget? leading;
  final List<Widget>? actions;

  const CustomAppBar({
    this.flexibleSpace,
    this.title,
    this.leading,
    this.actions,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0.0,
      backgroundColor: Colors.white,
      flexibleSpace: flexibleSpace,
      title: title,
      leading: leading,
      actions: actions,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
