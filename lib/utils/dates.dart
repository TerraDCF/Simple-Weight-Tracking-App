import 'package:intl/intl.dart';

String displayDate(DateTime date) {
  if (areEqualDates(DateTime.now(), date)) return 'Hoy';
  if (areEqualDates(DateTime.now().subtract(Duration(days: 1)), date)) return 'Ayer';
  return DateFormat('dd/MM').format(date);
}

bool areEqualDates(DateTime dateTime1, DateTime dateTime2) => dateTime1.year == dateTime2.year && dateTime1.month == dateTime2.month && dateTime1.day == dateTime2.day;

DateTime onlyDate(DateTime date) {
  return DateTime(date.year, date.month, date.day);
}