import 'package:go_router/go_router.dart';
import 'package:investment_app/core/utils/api_endpoint.dart';
import 'package:investment_app/presentation/screens/feature_screen.dart';
import 'package:investment_app/presentation/screens/pdf_viewer_screen.dart';
import 'package:investment_app/presentation/screens/pin/pin_screen.dart';
import 'package:investment_app/presentation/screens/pin/set_pin_screen.dart';
import 'package:investment_app/presentation/screens/splash_screen.dart';
import '../presentation/screens/dashboard_screen.dart';
import '../presentation/screens/login_screen.dart';


final GoRouter router = GoRouter(
  initialLocation: '/splash',
  routes: [
    GoRoute(
      path: '/splash',
      builder: (context, state) => const SplashScreen(),
    ),
    GoRoute(
      path: '/login',
      builder: (context, state) => const LoginScreen(),
    ),
    GoRoute(
      path: '/dashboard',
      builder: (context, state) => const DashboardScreen(),
    ),
    GoRoute(
      path: '/investments',
      builder: (context, state) => const FeatureScreen(),
    ),
    GoRoute(
      path: '/pdfviewer',
      builder: (context, state) {
        final String pdfUrl = state.extra as String;
        return PDFViewerScreen(pdfUrl: pdfUrl);
      },
    ),
    GoRoute(
      path: '/pin_login',
      builder: (context, state) => const PinLoginScreen(),
    ),
    GoRoute(
      path: '/set_pin',
      builder: (context, state) => const SetPinScreen(),
    ),
  ],
);
