import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_stepper/flutter_stepper.dart';
import 'package:flutter_stepper/flutter_stepper_platform_interface.dart';
import 'package:flutter_stepper/flutter_stepper_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockFlutterStepperPlatform 
    with MockPlatformInterfaceMixin
    implements FlutterStepperPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final FlutterStepperPlatform initialPlatform = FlutterStepperPlatform.instance;

  test('$MethodChannelFlutterStepper is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelFlutterStepper>());
  });

  test('getPlatformVersion', () async {
    FlutterStepper flutterStepperPlugin = FlutterStepper();
    MockFlutterStepperPlatform fakePlatform = MockFlutterStepperPlatform();
    FlutterStepperPlatform.instance = fakePlatform;
  
    expect(await flutterStepperPlugin.getPlatformVersion(), '42');
  });
}
