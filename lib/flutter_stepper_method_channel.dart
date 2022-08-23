import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'flutter_stepper_platform_interface.dart';

/// An implementation of [FlutterStepperPlatform] that uses method channels.
class MethodChannelFlutterStepper extends FlutterStepperPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('flutter_stepper');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
