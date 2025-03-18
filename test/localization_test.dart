import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:investment_app/providers/language_provider.dart';

void main() {
  group('LanguageProvider Tests', () {
    test('should change language correctly', () {
      final provider = LanguageProvider();
      
      expect(provider.currentLocale.languageCode, 'en');
      
      provider.changeLanguage('ar');
      expect(provider.currentLocale.languageCode, 'ar');
      
      provider.changeLanguage('en');
      expect(provider.currentLocale.languageCode, 'en');
    });
  });
} 