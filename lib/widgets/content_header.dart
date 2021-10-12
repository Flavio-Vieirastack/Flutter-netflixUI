import 'package:flutter/material.dart';
import 'package:flutter_netflix_responsive_ui/models/models.dart';

class ContentHeader extends StatelessWidget {
  final Content featureContent;

  ContentHeader({Key? key, required this.featureContent}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: Stack(
        children: [
          Container(
            height: 500,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(featureContent.imageUrl),
                    fit: BoxFit.cover)),
          ),
          Container(
            height: 500,
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.black, Colors.transparent],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                )
                ),
          ),
        ],
      ),
    );
  }
}