import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../../providers/auth_provider.dart';

class SetPinScreen extends ConsumerWidget {
  const SetPinScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    TextEditingController pinController = TextEditingController();

    return Scaffold(
      appBar: AppBar(title: const Text("Set PIN")),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Enter a 4-digit PIN"),
            const SizedBox(height: 10),
            PinCodeTextField(
              length: 4,
              obscureText: true,
              controller: pinController,
              appContext: context,
              onCompleted: (pin) async {
                await ref.read(authProvider.notifier).savePIN(pin);
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("PIN Set Successfully")),
                );
                GoRouter.of(context).pushReplacement('/dashboard');

              },
            ),
          ],
        ),
      ),
    );
  }
}
