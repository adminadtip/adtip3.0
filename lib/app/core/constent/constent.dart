import 'package:intl/intl.dart';

String formatDate(String dateString) {
  DateTime dateTime = DateTime.parse(dateString);

  // Format the DateTime object using a DateFormat
  String formattedDate = DateFormat('MMMM dd, yyyy').format(dateTime);

  return formattedDate;
}
