import 'package:flutter/material.dart';
import 'package:responsive_ex/core/ui_components/info_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // media query let me know the dimensions of screen
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: Colors.black,
          width: screenWidth / 2,
          height: screenHeight / 2,
          // infoWidget is a class use layout builder to get the screen info (width and height) and orientation and the widget info (width and height)
          child: InfoWidget(
            builder: (context, deviceInfo) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    color: Colors.red,
                    width: deviceInfo.localWidth / 2,
                    height: deviceInfo.localHeight / 2,
                  )
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
