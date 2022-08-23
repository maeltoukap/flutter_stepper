import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'flutter_stepper_method_channel.dart';

abstract class FlutterStepperPlatform extends PlatformInterface {
  /// Constructs a FlutterStepperPlatform.
  FlutterStepperPlatform() : super(token: _token);

  static final Object _token = Object();

  static FlutterStepperPlatform _instance = MethodChannelFlutterStepper();

  /// The default instance of [FlutterStepperPlatform] to use.
  ///
  /// Defaults to [MethodChannelFlutterStepper].
  static FlutterStepperPlatform get instance => _instance;
  
  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FlutterStepperPlatform] when
  /// they register themselves.
  static set instance(FlutterStepperPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
