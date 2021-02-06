import 'dart:io';
import 'package:cyprus_museum/Screens/audio_guide/myplatform.dart';

class PlatformUtil {
  static MyPlatform myPlatform() {
    if (Platform.isAndroid) return MyPlatform.ANDROID;
    if (Platform.isIOS) return MyPlatform.IOS;
  }
}
