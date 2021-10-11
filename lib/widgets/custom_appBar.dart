import 'package:flutter/material.dart';

import 'package:flutter_netflix_responsive_ui/assets.dart';

class CustomAppbar extends StatelessWidget {
  final double scroolOffset;
  const CustomAppbar({Key? key, this.scroolOffset = 0.0}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 24),
      color: Colors.black.withOpacity((scroolOffset / 350).clamp(0, 1).toDouble()),
      child: SafeArea(
        child: Row(
          children: [
            Image.asset(Assets.netflixLogo0),
            const SizedBox(
              width: 12,
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _AppbarButtom(
                    title: "Tv-Shows",
                    onTap: () => print("onTap"),
                  ),
                  _AppbarButtom(
                    title: "Movies",
                    onTap: () => print("onTap"),
                  ),
                  _AppbarButtom(
                    title: "My list",
                    onTap: () => print("onTap"),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _AppbarButtom extends StatelessWidget {
  final String title;
  final VoidCallback onTap;

  const _AppbarButtom({
    Key? key,
    required this.title,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onDoubleTap: this.onTap,
        child: Text(
          this.title,
          style: const TextStyle(
              color: Colors.white, fontSize: 16, fontWeight: FontWeight.w600),
        ));
  }
}
