import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../providers/language_provider.dart';
import '../localization/translation_service.dart';

class LanguageSwitcher extends ConsumerWidget {
  const LanguageSwitcher({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final translationService = ref.watch(translationServiceProvider);
    final currentLocale = ref.watch(languageProvider);

    return IconButton(
      icon: const Icon(Icons.language),
      tooltip: translationService.translate('change_language'),
      onPressed: () {
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text(translationService.translate('change_language')),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ListTile(
                  title: const Text('English'),
                  leading: const Icon(Icons.language),
                  selected: currentLocale.languageCode == 'en',
                  onTap: () {
                    ref.read(languageProvider.notifier).changeLanguage('en');
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  title: const Text('العربية'),
                  leading: const Icon(Icons.language),
                  selected: currentLocale.languageCode == 'ar',
                  onTap: () {
                    ref.read(languageProvider.notifier).changeLanguage('ar');
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }
} 