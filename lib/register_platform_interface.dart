import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'register_method_channel.dart';

abstract class RegisterPlatform extends PlatformInterface {
  /// Constructs a RegisterPlatform.
  RegisterPlatform() : super(token: _token);

  static final Object _token = Object();

  static RegisterPlatform _instance = MethodChannelRegister();

  /// The default instance of [RegisterPlatform] to use.
  ///
  /// Defaults to [MethodChannelRegister].
  static RegisterPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [RegisterPlatform] when
  /// they register themselves.
  static set instance(RegisterPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
