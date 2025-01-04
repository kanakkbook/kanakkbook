import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;

  const CustomAppBar({super.key,this.title});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: preferredSize.height,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration:  BoxDecoration(gradient: LinearGradient(colors: [Theme.of(context).colorScheme.primary,Theme.of(context).colorScheme.secondary])),
      child:  Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Icon(Icons.menu, color: Colors.white),
          Text(
            title??"",
            style: Theme.of(context).textTheme.titleSmall
          ),
          const Icon(Icons.settings, color: Colors.white),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60);
}


