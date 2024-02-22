import 'package:flutter_test/flutter_test.dart';
import 'package:register/register.dart';
import 'package:register/register_platform_interface.dart';
import 'package:register/register_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockRegisterPlatform
    with MockPlatformInterfaceMixin
    implements RegisterPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final RegisterPlatform initialPlatform = RegisterPlatform.instance;

  test('$MethodChannelRegister is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelRegister>());
  });

  test('getPlatformVersion', () async {
    Register registerPlugin = Register();
    MockRegisterPlatform fakePlatform = MockRegisterPlatform();
    RegisterPlatform.instance = fakePlatform;

    expect(await registerPlugin.getPlatformVersion(), '42');
  });
}
