import 'package:flutter/material.dart';
import 'package:responsive_ex/core/ui_components/info_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: screenWidth,
          height: screenHeight,
          child: InfoWidget(
            builder: (context, deviceInfo) {
              return const Column(
                children: [
                  Text('walid mohamed mohamed hassan barakat'),
                  Text('Flutter developer'),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
