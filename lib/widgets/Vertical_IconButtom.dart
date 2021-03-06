import 'package:flutter/material.dart';

class VerticalIconbuttom extends StatelessWidget {
  final IconData icon;
  final String title;
  final VoidCallback onTap;

  VerticalIconbuttom({
    Key? key,
    required this.icon,
    required this.title,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: this.onTap,
      child: Column(
        children: [
          Icon(
            this.icon,
            color: Colors.white,
          ),
          const SizedBox(
            height: 2.0,
          ),
          Text(
            this.title,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }
}
