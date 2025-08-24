import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';

class FirebaseService {
  static FirebaseService? _instance;
  static FirebaseService get instance => _instance ??= FirebaseService._();
  
  FirebaseService._();

  late FirebaseAuth _auth;
  late FirebaseFirestore _firestore;
  late FirebaseMessaging _messaging;
  late FirebaseAnalytics _analytics;
  late FirebaseCrashlytics _crashlytics;
  late FirebaseRemoteConfig _remoteConfig;

  FirebaseAuth get auth => _auth;
  FirebaseFirestore get firestore => _firestore;
  FirebaseMessaging get messaging => _messaging;
  FirebaseAnalytics get analytics => _analytics;
  FirebaseCrashlytics get crashlytics => _crashlytics;
  FirebaseRemoteConfig get remoteConfig => _remoteConfig;

  // Initialize Firebase
  Future<void> initialize() async {
    try {
      // Initialize Firebase Core
      await Firebase.initializeApp();
      
      // Initialize Firebase services
      _auth = FirebaseAuth.instance;
      _firestore = FirebaseFirestore.instance;
      _messaging = FirebaseMessaging.instance;
      _analytics = FirebaseAnalytics.instance;
      _crashlytics = FirebaseCrashlytics.instance;
      _remoteConfig = FirebaseRemoteConfig.instance;

      // Configure Firestore
      _firestore.settings = const Settings(
        persistenceEnabled: true,
        cacheSizeBytes: Settings.CACHE_SIZE_UNLIMITED,
      );

      // Configure Remote Config
      await _configureRemoteConfig();

      // Configure Messaging
      await _configureMessaging();

      // Configure Crashlytics
      await _configureCrashlytics();

      print('Firebase initialized successfully');
    } catch (e) {
      print('Error initializing Firebase: $e');
      rethrow;
    }
  }

  // Configure Remote Config
  Future<void> _configureRemoteConfig() async {
    try {
      await _remoteConfig.setConfigSettings(RemoteConfigSettings(
        fetchTimeout: const Duration(minutes: 1),
        minimumFetchInterval: const Duration(hours: 1),
      ));

      await _remoteConfig.setDefaults(const {
        'match_timeout_minutes': 30,
        'reservation_timeout_minutes': 15,
        'max_interests': 10,
        'max_photos': 6,
        'enable_selfie_verification': false,
      });

      await _remoteConfig.fetchAndActivate();
    } catch (e) {
      print('Error configuring Remote Config: $e');
    }
  }

  // Configure Messaging
  Future<void> _configureMessaging() async {
    try {
      // Request permission
      NotificationSettings settings = await _messaging.requestPermission(
        alert: true,
        announcement: false,
        badge: true,
        carPlay: false,
        criticalAlert: false,
        provisional: false,
        sound: true,
      );

      if (settings.authorizationStatus == AuthorizationStatus.authorized) {
        print('User granted permission');
      } else if (settings.authorizationStatus == AuthorizationStatus.provisional) {
        print('User granted provisional permission');
      } else {
        print('User declined or has not accepted permission');
      }

      // Get FCM token
      String? token = await _messaging.getToken();
      if (token != null) {
        print('FCM Token: $token');
        // TODO: Save token to user profile
      }

      // Handle token refresh
      _messaging.onTokenRefresh.listen((newToken) {
        print('FCM Token refreshed: $newToken');
        // TODO: Update token in user profile
      });

      // Handle foreground messages
      FirebaseMessaging.onMessage.listen((RemoteMessage message) {
        print('Got a message whilst in the foreground!');
        print('Message data: ${message.data}');

        if (message.notification != null) {
          print('Message also contained a notification: ${message.notification}');
        }
        // TODO: Show local notification
      });

      // Handle background messages
      FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
    } catch (e) {
      print('Error configuring Messaging: $e');
    }
  }

  // Configure Crashlytics
  Future<void> _configureCrashlytics() async {
    try {
      await _crashlytics.setCrashlyticsCollectionEnabled(true);
      
      // Set user identifier when user logs in
      _auth.authStateChanges().listen((User? user) {
        if (user != null) {
          _crashlytics.setUserIdentifier(user.uid);
        } else {
          _crashlytics.setUserIdentifier('');
        }
      });
    } catch (e) {
      print('Error configuring Crashlytics: $e');
    }
  }

  // Get current user
  User? get currentUser => _auth.currentUser;

  // Check if user is authenticated
  bool get isAuthenticated => _auth.currentUser != null;

  // Sign out
  Future<void> signOut() async {
    try {
      await _auth.signOut();
      print('User signed out successfully');
    } catch (e) {
      print('Error signing out: $e');
      rethrow;
    }
  }

  // Delete user account
  Future<void> deleteAccount() async {
    try {
      final user = _auth.currentUser;
      if (user != null) {
        await user.delete();
        print('User account deleted successfully');
      }
    } catch (e) {
      print('Error deleting account: $e');
      rethrow;
    }
  }

  // Log analytics event
  Future<void> logEvent({
    required String name,
    Map<String, Object>? parameters,
  }) async {
    try {
      await _analytics.logEvent(
        name: name,
        parameters: parameters,
      );
    } catch (e) {
      print('Error logging analytics event: $e');
    }
  }

  // Log custom crash
  Future<void> logError(String message, [dynamic error, StackTrace? stackTrace]) async {
    try {
      await _crashlytics.recordError(
        error ?? message,
        stackTrace,
        reason: message,
      );
    } catch (e) {
      print('Error logging to Crashlytics: $e');
    }
  }

  // Get remote config value
  String getRemoteConfigString(String key) {
    return _remoteConfig.getString(key);
  }

  int getRemoteConfigInt(String key) {
    return _remoteConfig.getInt(key);
  }

  bool getRemoteConfigBool(String key) {
    return _remoteConfig.getBool(key);
  }

  double getRemoteConfigDouble(String key) {
    return _remoteConfig.getDouble(key);
  }
}

// Background message handler
@pragma('vm:entry-point')
Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp();
  print('Handling a background message: ${message.messageId}');
  // TODO: Handle background message
}
