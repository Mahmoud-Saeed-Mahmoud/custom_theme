import 'package:flutter/material.dart';

import '../helpers/enums/device_type_enum.dart';
import '../helpers/extensions/extensions.dart';

class AppResponsive extends StatelessWidget {
  final Widget desktop;

  final Widget mobile;
  final Widget tablet;
  const AppResponsive({
    super.key,
    required this.mobile,
    required this.tablet,
    required this.desktop,
  });

  @override
  Widget build(BuildContext context) {
    return switch (context.getDeviceType) {
      DeviceTypeEnum.mobile => mobile,
      DeviceTypeEnum.tablet => tablet,
      DeviceTypeEnum.desktop => desktop,
    };
  }
}
