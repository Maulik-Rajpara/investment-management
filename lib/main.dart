import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:investment_app/presentation/screens/splash_screen.dart';
import 'package:investment_app/route/router.dart';
import 'core/localization/app_localizations.dart';

import 'presentation/screens/login_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const ProviderScope(child: InvestmentApp()));
}

class InvestmentApp extends StatelessWidget {
  const InvestmentApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      child: AppLocalizationWrapper.withLocalizations(
        child: MaterialApp.router(
          routerConfig: router, // ✅ This already handles navigation
          title: 'Investment App',
          debugShowCheckedModeBanner: false,
        ),
      ),
    );
  }
}
