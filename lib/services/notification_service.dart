import 'package:firebase_messaging/firebase_messaging.dart';

@pragma('vm:entry-point')
Future<void> firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  // Arka planda bildirim işlemleri burada yapılır
}

class NotificationService {
  NotificationService._();
  static final NotificationService instance = NotificationService._();

  final FirebaseMessaging _messaging = FirebaseMessaging.instance;

  // ─── Init ────────────────────────────────────────────────────────────────────

  Future<void> init() async {
    FirebaseMessaging.onBackgroundMessage(firebaseMessagingBackgroundHandler);

    await _requestPermission();
    _listenMessages();
  }

  // ─── Permission ──────────────────────────────────────────────────────────────

  Future<void> _requestPermission() async {
    final settings = await _messaging.requestPermission(
      alert: true,
      sound: true,
      badge: true,
    );

    if (settings.authorizationStatus != AuthorizationStatus.authorized) {
      // Kullanıcı izin vermedi
      return;
    }
  }

  // ─── Messages ────────────────────────────────────────────────────────────────

  void _listenMessages() {
    // Uygulama açıkken gelen bildirimler
    FirebaseMessaging.onMessage.listen(_handleForegroundMessage);

    // Uygulama arka plandayken bildirime tıklanınca
    FirebaseMessaging.onMessageOpenedApp.listen(_handleMessageOpenedApp);
  }

  void _handleForegroundMessage(RemoteMessage message) {
    final notification = message.notification;
    if (notification == null) return;

    // İstersen local notification göster (flutter_local_notifications paketi)
  }

  void _handleMessageOpenedApp(RemoteMessage message) {
    final data = message.data;
    if (data['type'] == 'otp') {
      // OTP ekranına yönlendir
    }
  }

  // ─── Helpers ─────────────────────────────────────────────────────────────────

  Future<String?> getToken() => _messaging.getToken();

  Future<void> deleteToken() => _messaging.deleteToken();
}
