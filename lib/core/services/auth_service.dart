import 'package:local_auth/local_auth.dart';

class AuthService {
  static final LocalAuthentication auth = LocalAuthentication();

  static Future<bool> authenticateUser() async {
    return await auth.authenticate(
      localizedReason: 'Authenticate to access investments',
      options: const AuthenticationOptions(
        stickyAuth: true,
      ),
    );
  }
}
