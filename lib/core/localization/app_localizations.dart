import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../providers/language_provider.dart';

class AppLocalizationWrapper {
  static const supportedLocales = [
    Locale('en'),
    Locale('ar'),
  ];

  static Widget withLocalizations({
    required Widget child,
  }) {
    return Consumer(
      builder: (context, ref, _) {
        final locale = ref.watch(languageProvider);

        return MaterialApp(
          locale: locale,
          localizationsDelegates: [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: supportedLocales,
          builder: (context, child) {
            return Directionality(
              textDirection: locale.languageCode == 'ar'
                  ? TextDirection.rtl
                  : TextDirection.ltr,
              child: child!,
            );
          },
          home: child,
        );
      },
    );
  }
}
