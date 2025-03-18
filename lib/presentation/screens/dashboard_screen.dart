import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import '../../core/localization/translation_service.dart';
import '../../core/widgets/language_switcher.dart';
import '../../providers/auth_provider.dart';
import 'feature_screen.dart';

class DashboardScreen extends ConsumerWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final translationService = ref.watch(translationServiceProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text(translationService.translate('dashboard')),
        actions: [
          const LanguageSwitcher(),
          IconButton(
            icon: const Icon(Icons.logout),
            tooltip: translationService.translate('logout'),
            onPressed: () async {
              ref.read(authProvider.notifier).logout();
              context.go('/login');
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              translationService.translate('welcome_message'),
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              translationService.translate('smart_investing'),
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.normal,
                color: Colors.black,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 10),
            Text(
              translationService.translate('secure_growth'),
              style: const TextStyle(
                fontSize: 14,
                color: Colors.grey,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                GoRouter.of(context).push('/investments');
              },
              child: Text(translationService.translate('view_investments')),
            ),
          ],
        ),
      ),
    );
  }
}
