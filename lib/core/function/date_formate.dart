import 'dart:developer';
import 'package:intl/intl.dart';

DateTime? parseTransactionDate(String raw) {
  if (raw.isEmpty) return null;

  // تنظيف النص
  final clean = raw
      .replaceAll('|', ' ')
      .replaceAll('/', '-')
      .replaceAll(RegExp(r'\s+'), ' ')
      .trim();

  log('🧹 Cleaned: $clean');

  // ✅ أولاً: لو الصيغة أصلاً ISO-like نحللها مباشرة
  try {
    if (RegExp(r'^\d{4}-\d{2}-\d{2}').hasMatch(clean)) {
      final parsed = DateTime.parse(clean);
      log('🟢 Parsed as ISO → $parsed');
      return parsed;
    }
  } catch (e) {
    log('⚠️ ISO parse failed: $e');
  }

  // الصيغ المحتملة الأخرى
  final formats = [
    'dd-MM-yyyy h:mm a', // 12-10-2025 1:09 PM
    'dd-MM-yyyy hh:mm a', // 12-10-2025 01:09 pm
    'dd-MM-yyyy HH:mm', // 12-10-2025 13:09
  ];

  for (final f in formats) {
    try {
      final parsed = DateFormat(f).parse(clean);
      log('✅ Parsed using $f → $parsed');
      return parsed;
    } catch (_) {}
  }

  log('❌ Failed to parse date: $clean');
  return null;
}

String formatDateTime(
  DateTime dateTime, {
  String pattern = 'dd MMMM yyyy - hh:mm a',
}) {
  return DateFormat(pattern, 'ar_EG').format(dateTime);
}
