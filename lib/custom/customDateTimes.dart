import 'package:intl/intl.dart';

class CustomDateTime{
  static String getDate = DateFormat('dMMMM,y', 'fr').format(DateTime.now());
  static String getDayName = DateFormat('EEEE', 'fr').format(DateTime.now());
  static String getLast7Date = DateFormat('EEEE', 'fr').format(DateTime.now());


}