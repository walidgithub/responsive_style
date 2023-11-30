import 'package:flutter/material.dart';

import '../functions/get_device_type.dart';
import '../models/device_info.dart';

class InfoWidget extends StatelessWidget {
  final Widget Function(BuildContext context, DeviceInfo deviceInfo) builder;

  const InfoWidget({super.key, required this.builder});
  @override
  Widget build(BuildContext context) {
    // layout builder to get dimensions of widget (that i am in it) not the screen
    return LayoutBuilder(
      builder: (context, constrains) {
        var mediaQueryData = MediaQuery.of(context);
        var deviceInfo = DeviceInfo(
          orientation: mediaQueryData.orientation,
          deviceType: getDeviceType(mediaQueryData),
          // screen width
          screenWidth: mediaQueryData.size.width,
          // screen height
          screenHeight: mediaQueryData.size.height,
          // inner widget height
          localHeight: constrains.maxHeight,
          // inner widget width
          localWidth: constrains.maxWidth,
        );
        return builder(context, deviceInfo);
      },
    );
  }
}
