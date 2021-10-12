import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_netflix_responsive_ui/models/models.dart';

import 'Vertical_IconButtom.dart';

class ContentHeader extends StatelessWidget {
  final Content featureContent;

  ContentHeader({Key? key, required this.featureContent}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          height: 500.0,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(featureContent.imageUrl),
                  fit: BoxFit.cover)),
        ),
        Container(
          height: 500.0,
          decoration: const BoxDecoration(
              gradient: LinearGradient(
            colors: [Colors.black, Colors.transparent],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
          )),
        ),
        Positioned(
          bottom: 110.0,
          child: SizedBox(
            width: 250.0,
            child: Image.asset(featureContent.titleImageUrl),
          ),
        ),
        Positioned(
            left: 0,
            right: 0,
            bottom: 40.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                VerticalIconbuttom(
                  icon: Icons.add,
                  title: "List",
                  onTap: () {},
                ),
                _Playbuttom(),
                VerticalIconbuttom(
                  icon: Icons.info_outline,
                  title: "Info",
                  onTap: () {},
                ),
              ],
            ))
      ],
    );
  }
}

class _Playbuttom extends StatelessWidget {
  const _Playbuttom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(15, 5, 20, 5),
      child: TextButton.icon(
        onPressed: () {},
        icon: const Icon(
          Icons.play_arrow,
          size: 30.0,
          color: Colors.white,
        ),
        label: const Text(
          "Play",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
