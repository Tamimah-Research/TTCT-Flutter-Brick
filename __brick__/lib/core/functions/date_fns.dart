import 'package:intl/intl.dart';

/// Custom date Formatter
String formatDate({required DateTime? date, String? format = 'yyyy-MM-dd h:mm a'}) {
  try {
    final formatter = DateFormat(format);
    final formattedDate = formatter.format(date!);
    return formattedDate;
  } catch (e) {
    return ' ';
  }
}

/// To find latest Date from list of Dates
DateTime mostRecent(List<DateTime> dates) {
  return dates.reduce((a, b) => a.isAfter(b) ? a : b);
}

/// Get Starting Date
DateTime getStartDate(DateTime start) {
  final time = DateTime(start.year, start.month, start.day);
  return time;
}

/// Get Ending Date
DateTime getEndDate(DateTime end) {
  final time = DateTime(end.year, end.month, end.day).add(const Duration(
      hours: 23, minutes: 59, seconds: 59, milliseconds: 999),);
  return time;
}
