import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:local_auth/local_auth.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class AuthNotifier extends StateNotifier<bool> {
  AuthNotifier() : super(false);

  final LocalAuthentication _localAuth = LocalAuthentication();
  final FlutterSecureStorage _secureStorage = const FlutterSecureStorage();

  Future<bool> isBiometricSupported() async {
    bool canCheckBiometrics = await _localAuth.canCheckBiometrics;
    bool isDeviceSupported = await _localAuth.isDeviceSupported();
    return canCheckBiometrics && isDeviceSupported;
  }

  Future<bool> authenticateWithBiometric() async {
    try {

      bool isSupported = await isBiometricSupported();
      if (!isSupported) return false;

      bool authenticated = await _localAuth.authenticate(
        localizedReason: 'Scan your fingerprint or use Face ID to log in',
        options: const AuthenticationOptions(
          stickyAuth: true, sensitiveTransaction: true,
          biometricOnly: true,
        ),
      );

      if (authenticated) {
        await _secureStorage.write(key: 'isAuthenticated', value: 'true');
      }

      state = authenticated;
      return authenticated;
    } catch (e) {
      return false;
    }
  }

  Future<void> savePIN(String pin) async {
    await _secureStorage.write(key: 'userPIN', value: pin);
  }

  Future<bool> authenticateWithPIN(String enteredPin) async {
    String? storedPin = await _secureStorage.read(key: 'userPIN');

    if (storedPin != null && storedPin == enteredPin) {
      await _secureStorage.write(key: 'isAuthenticated', value: 'true');
      state = true;
      return true;
    }
    return false;
  }

  Future<bool> checkStoredAuth() async {
    String? isAuthenticated = await _secureStorage.read(key: 'isAuthenticated');
    if (isAuthenticated == 'true') {
      state = true;
      return true;
    }
    return false;
  }

  Future<bool> hasSavedPIN() async {
    String? storedPin = await _secureStorage.read(key: 'userPIN');
    return storedPin != null;
  }

  Future<void> logout() async {
    await _secureStorage.delete(key: 'isAuthenticated');
    state = false;
  }
}

final authProvider = StateNotifierProvider<AuthNotifier, bool>((ref) {
  return AuthNotifier();
});
