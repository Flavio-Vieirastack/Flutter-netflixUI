import 'package:flutter/material.dart';
import 'package:flutter_netflix_responsive_ui/data/data.dart';
import 'package:flutter_netflix_responsive_ui/widgets/content_header.dart';
import 'package:flutter_netflix_responsive_ui/widgets/custom_appBar.dart';

class Homescreen extends StatefulWidget {
  Homescreen({Key? key}) : super(key: key);

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  double _scroolOffset = 0.0;

  ScrollController? _scroolController;

  @override
  void initState() {
    _scroolController = ScrollController()
      ..addListener(() {
        setState(() {
          _scroolOffset = _scroolController!.offset;
        });
      });
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _scroolController!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
          child: CustomAppbar(
            scroolOffset: _scroolOffset,
          ),
          preferredSize: Size(
            screenSize.width,
            50.0,
          )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.grey[850] ?? Colors.grey,
        child: const Icon(Icons.cast),
      ),
      body: CustomScrollView(
        controller: _scroolController,
        slivers: [
          SliverToBoxAdapter(child: ContentHeader(featureContent: sintelContent))
        ],
      ),
    );
  }
}
