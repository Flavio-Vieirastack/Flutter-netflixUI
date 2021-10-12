import 'package:flutter/material.dart';
import 'package:flutter_netflix_responsive_ui/models/content_model.dart';

class Previews extends StatelessWidget {
  final String title;
  final List<Content> contentList;
  const Previews({
    Key? key,
    required this.title,
    required this.contentList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column();
  }
}
