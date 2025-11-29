import 'package:url_launcher/url_launcher.dart';

Future<void> openWhatsApp({
  required String phone, // E.164 without '+', e.g. "919876543210"
  String message = '',
}) async {
  final encodedMessage = Uri.encodeComponent(message);
  final uri = Uri.parse('https://wa.me/$phone?text=$encodedMessage');

  if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
    throw 'Could not launch WhatsApp for $phone';
  }
}
