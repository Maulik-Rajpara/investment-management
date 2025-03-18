import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

const String _languageKey = 'app_language';

final languageProvider = StateNotifierProvider<LanguageNotifier, Locale>((ref) {
  return LanguageNotifier();
});

class LanguageNotifier extends StateNotifier<Locale> {
  LanguageNotifier() : super(const Locale('en')) {
    _loadSavedLanguage();
  }

  final _storage = const FlutterSecureStorage();

  Future<void> _loadSavedLanguage() async {
    try {
      final savedLanguage = await _storage.read(key: _languageKey);
      if (savedLanguage != null) {
        state = Locale(savedLanguage);
      }
    } catch (e) {
      debugPrint('Error loading saved language: $e');
    }
  }

  Future<void> changeLanguage(String languageCode) async {
    try {
      state = Locale(languageCode);
      await _storage.write(key: _languageKey, value: languageCode);
    } catch (e) {
      debugPrint('Error saving language: $e');
    }
  }
} 