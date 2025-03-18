import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:investment_app/providers/auth_provider.dart';
import 'package:go_router/go_router.dart';
import '../../core/utils/app_assets.dart';

class SplashScreen extends ConsumerStatefulWidget {
  const SplashScreen({super.key});

  @override
  ConsumerState<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends ConsumerState<SplashScreen> {

  @override
  void initState() {
    super.initState();
    redirectScreen();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(AppAssets.appLogo, isAntiAlias: true, height: 200, width: 200),

          ],
        ),
      ),
    );
  }

  void redirectScreen() async {
    await Future.delayed(const Duration(seconds: 3));

    final auth = ref.read(authProvider.notifier); // Access Riverpod provider
    bool hasSession = await auth.checkStoredAuth();  // Check session

    if (hasSession) {
      if (mounted) context.go('/dashboard');
    } else {
      if (mounted) context.go('/login');
    }
  }
}
