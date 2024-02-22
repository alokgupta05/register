import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:register/register_method_channel.dart';

void main() {
  MethodChannelRegister platform = MethodChannelRegister();
  const MethodChannel channel = MethodChannel('register');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
