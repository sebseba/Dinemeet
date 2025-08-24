import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../common/widgets/main_navigation.dart';
import '../../features/auth/presentation/screens/login_screen.dart';
import '../../features/auth/presentation/screens/verify_screen.dart';
import '../../features/auth/presentation/screens/welcome_screen.dart';
import '../../features/chat/presentation/screens/chat_screen.dart';
import '../../features/match/presentation/screens/match_screen.dart';
import '../../features/profile/presentation/screens/profile_setup_screen.dart';
import '../../features/reservation/presentation/screens/reservation_screen.dart';
import '../../features/settings/presentation/screens/settings_screen.dart';
import '../../features/survey/presentation/screens/survey_screen.dart';

final routerProvider = Provider<GoRouter>((ref) {
  return AppRouter.router;
});

class AppRouter {
  static final GoRouter router = GoRouter(
    initialLocation: '/',
    routes: [
      // Welcome Screen
      GoRoute(
        path: '/',
        name: 'welcome',
        builder: (context, state) => const WelcomeScreen(),
      ),
      
      // Auth Routes
      GoRoute(
        path: '/login',
        name: 'login',
        builder: (context, state) => const LoginScreen(),
      ),
      
      GoRoute(
        path: '/verify',
        name: 'verify',
        builder: (context, state) {
          final phoneNumber = state.uri.queryParameters['phone'] ?? '';
          return VerifyScreen(phoneNumber: phoneNumber);
        },
      ),
      
      // Profile Setup
      GoRoute(
        path: '/profile-setup',
        name: 'profile-setup',
        builder: (context, state) => const ProfileSetupScreen(),
      ),
      
      // Main Navigation (Protected Routes)
      ShellRoute(
        builder: (context, state, child) => MainNavigation(child: child),
        routes: [
          // Match Screen
          GoRoute(
            path: '/match',
            name: 'match',
            builder: (context, state) => const MatchScreen(),
          ),
          
          // Reservation Screen
          GoRoute(
            path: '/reservation/:groupId',
            name: 'reservation',
            builder: (context, state) {
              final groupId = state.pathParameters['groupId'] ?? '';
              return ReservationScreen(groupId: groupId);
            },
          ),
          
          // Chat Screen
          GoRoute(
            path: '/chat/:groupId',
            name: 'chat',
            builder: (context, state) {
              final groupId = state.pathParameters['groupId'] ?? '';
              return ChatScreen(groupId: groupId);
            },
          ),
          
          // Survey Screen
          GoRoute(
            path: '/survey/:groupId',
            name: 'survey',
            builder: (context, state) {
              final groupId = state.pathParameters['groupId'] ?? '';
              return SurveyScreen(groupId: groupId);
            },
          ),
          
          // Settings Screen
          GoRoute(
            path: '/settings',
            name: 'settings',
            builder: (context, state) => const SettingsScreen(),
          ),
        ],
      ),
    ],
    errorBuilder: (context, state) => _ErrorScreen(error: state.error),
    redirect: (context, state) {
      // TODO: Implement auth guard
      // Check if user is authenticated
      // If not authenticated and trying to access protected routes, redirect to login
      // If authenticated and on auth screens, redirect to main app
      return null;
    },
  );
}

class _ErrorScreen extends StatelessWidget {
  final Exception? error;

  const _ErrorScreen({this.error});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hata'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.error_outline,
              size: 64,
              color: Colors.red,
            ),
            const SizedBox(height: 16),
            Text(
              'Bir hata oluştu',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            if (error != null) ...[
              const SizedBox(height: 8),
              Text(
                error.toString(),
                style: Theme.of(context).textTheme.bodyMedium,
                textAlign: TextAlign.center,
              ),
            ],
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () => context.go('/'),
              child: const Text('Ana Sayfaya Dön'),
            ),
          ],
        ),
      ),
    );
  }
}
