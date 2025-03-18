import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:go_router/go_router.dart';

import '../../../providers/auth_provider.dart';


class PinLoginScreen extends ConsumerWidget {
  const PinLoginScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    TextEditingController pinController = TextEditingController();

    return Scaffold(
      appBar: AppBar(title: const Text("Enter PIN")),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Enter your 4-digit PIN"),
            const SizedBox(height: 10),
            PinCodeTextField(
              length: 4,
              obscureText: true,
              controller: pinController,
              appContext: context, keyboardType: TextInputType.number,
              onCompleted: (pin) async {
                bool success = await ref.read(authProvider.notifier).authenticateWithPIN(pin);
                if (success) {
                  context.go('/dashboard');
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("Invalid PIN")),
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
