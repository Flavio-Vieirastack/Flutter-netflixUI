import 'package:flutter/material.dart';
import 'package:flutter_netflix_responsive_ui/widgets/custom_appBar.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
          child: CustomAppbar(),
          preferredSize: Size(
            screenSize.width,
            50.0,
          )),
      body: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.grey[850] ?? Colors.grey,
          child: const Icon(Icons.cast),
        ),
      ),
    );
  }
}
