import 'package:timezone/data/latest.dart' as tz;
import 'package:timezone/timezone.dart' as tz;

tz.initializeTimeZones();
final tokyo = tz.getLocation('Asia/Tokyo');
final inTokyo = tz.TZDateTime.from(utcDate, tokyo);
