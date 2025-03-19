import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../core/localization/translation_service.dart';
import '../../providers/auth_provider.dart';

class LoginScreen extends ConsumerWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final translationService = ref.watch(translationServiceProvider);

    return Scaffold(
      appBar: AppBar(title:  Text(translationService.translate('login'))),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () async {
                bool success = await ref.read(authProvider.notifier).authenticateWithBiometric();
                if (success) context.go('/dashboard');
                else {
                  ScaffoldMessenger.of(context).showSnackBar(
                     SnackBar(content: Text(translationService.translate("bioFail"))),
                  );
                }
              },
              child:  Text(translationService.translate('loginWithBio')),
            ),
            const SizedBox(height: 20),
            Text(translationService.translate('or')),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                bool hasPin = await ref.read(authProvider.notifier).hasSavedPIN();
                if (hasPin) {
                  context.go('/pin_login');
                } else {
                  context.go('/set_pin');
                }
              },
              child:  Text(translationService.translate('loginPin')),
            ),
          ],
        ),
      ),
    );
  }
}
