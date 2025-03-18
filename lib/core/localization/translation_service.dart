import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../providers/language_provider.dart';
import 'translations/ar.dart';
import 'translations/en.dart';

final translationServiceProvider = Provider<TranslationService>((ref) {
  return TranslationService(ref);
});

class TranslationService {
  final Ref _ref;

  TranslationService(this._ref);

  String translate(String key) {
    final locale = _ref.watch(languageProvider);
    final translations = locale.languageCode == 'ar'
        ? ArTranslations.translations
        : EnTranslations.translations;
    
    return translations[key] ?? key;
  }
} 