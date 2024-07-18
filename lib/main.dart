import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pim_mobile/core/commons/ui_colors.dart';
import 'package:pim_mobile/core/constants/routes.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:pim_mobile/firebase_options.dart';
import 'package:pim_mobile/override_form_builder_localizations_id.dart';

Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  // Initialize Firebase if it hasn't been initialized yet
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

  const AndroidInitializationSettings initializationSettingsAndroid =
      AndroidInitializationSettings('@mipmap/ic_launcher');
  const DarwinInitializationSettings initializationSettingsDarwin =
      DarwinInitializationSettings();
  const InitializationSettings initializationSettings = InitializationSettings(
    android: initializationSettingsAndroid,
    iOS: initializationSettingsDarwin,
  );

  await flutterLocalNotificationsPlugin.initialize(initializationSettings);

  AndroidNotificationDetails androidPlatformChannelSpecifics =
      const AndroidNotificationDetails(
    'high_importance_channel',
    'High Importance Notifications',
    importance: Importance.max,
    priority: Priority.high,
    showWhen: false,
  );
  DarwinNotificationDetails iOSPlatformChannelSpecifics =
      const DarwinNotificationDetails();
  NotificationDetails platformChannelSpecifics = NotificationDetails(
    android: androidPlatformChannelSpecifics,
    iOS: iOSPlatformChannelSpecifics,
  );

  String title = message.notification?.title ?? 'New Notification';
  String body = message.notification?.body ?? 'You have a new message';

  await flutterLocalNotificationsPlugin.show(
    message.hashCode,
    title,
    body,
    platformChannelSpecifics,
    payload: message.data['payload'],
  );
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  FirebaseMessaging messaging = FirebaseMessaging.instance;

  NotificationSettings settings = await messaging.requestPermission(
    alert: true,
    announcement: false,
    badge: true,
    carPlay: false,
    criticalAlert: false,
    provisional: false,
    sound: true,
  );

  if (settings.authorizationStatus == AuthorizationStatus.authorized) {
    await messaging.subscribeToTopic('global');

    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      RemoteNotification? notification = message.notification;
      final localNotificationPlugin = FlutterLocalNotificationsPlugin();

      localNotificationPlugin.initialize(
        const InitializationSettings(
          android: AndroidInitializationSettings('@mipmap/ic_launcher'),
          iOS: DarwinInitializationSettings(),
        ),
      );

      if (notification != null) {
        const androidPlatformChannelSpecifics = AndroidNotificationDetails(
          'pim',
          'pim',
          importance: Importance.max,
          priority: Priority.high,
          showWhen: false,
        );

        const iOSPlatformChannelSpecifics = DarwinNotificationDetails();

        const platformChannelSpecifics = NotificationDetails(
          android: androidPlatformChannelSpecifics,
          iOS: iOSPlatformChannelSpecifics,
        );

        localNotificationPlugin.show(
          0,
          notification.title,
          notification.body,
          platformChannelSpecifics,
        );
      }
    });

    FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
  }

  SystemChrome.setPreferredOrientations(
    [
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ],
  );

  runApp(
    ProviderScope(
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: 'PIM Mobile',
        supportedLocales: const [
          Locale('id'),
        ],
        localizationsDelegates: const [
          ...GlobalMaterialLocalizations.delegates,
          OverrideFormBuilderLocalizationsId.delegate,
          FormBuilderLocalizations.delegate,
        ],
        routerConfig: Routes.router,
        theme: ThemeData(
          useMaterial3: true,
          appBarTheme: const AppBarTheme(
            backgroundColor: UIColor.blue,
            foregroundColor: Colors.white,
          ),
          scaffoldBackgroundColor: Colors.white,
          textTheme: GoogleFonts.openSansTextTheme(
            ThemeData(brightness: Brightness.light).textTheme.apply(
                  bodyColor: UIColor.black,
                  displayColor: UIColor.black,
                ),
          ),
        ),
      ),
    ),
  );
}
