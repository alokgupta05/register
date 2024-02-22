
import 'register_platform_interface.dart';

class Register {
  Future<String?> getPlatformVersion() {
    return RegisterPlatform.instance.getPlatformVersion();
  }
}
