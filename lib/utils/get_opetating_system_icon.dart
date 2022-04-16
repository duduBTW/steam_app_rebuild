import 'package:flutter/material.dart';
import '../models/Highlight.dart';

IconData getOpetatingSystemIcon(EnumOperatingSystems operatingSystem) {
  switch (operatingSystem) {
    case EnumOperatingSystems.windows:
      return Icons.window;
    case EnumOperatingSystems.linux:
      return Icons.biotech_rounded;
    case EnumOperatingSystems.mac:
      return Icons.apple;
    default:
      return Icons.notifications_outlined;
  }
}
