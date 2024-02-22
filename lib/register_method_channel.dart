import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'register_platform_interface.dart';

/// An implementation of [RegisterPlatform] that uses method channels.
class MethodChannelRegister extends RegisterPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('register');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
