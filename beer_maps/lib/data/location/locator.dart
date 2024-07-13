import 'package:geolocator/geolocator.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// Determine the current position of the device.
///
/// When the location services are not enabled or permissions
/// are denied the `Future` will return an error.
/// TODO catch the errors!!!
Future<Position> determinePosition() async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  final int? positionTimestamp = prefs.getInt('positionTimestamp');
  final int now = DateTime.now().millisecondsSinceEpoch;
  //if less than 5 minutes old, use old gps values
  if (positionTimestamp != null && now - positionTimestamp < 1000 * 60 * 5) { // 5 minutes
    final double? lat = prefs.getDouble('lat');
    final double? long = prefs.getDouble('long');
    if (lat != null && long != null) {
      return Position(
          latitude: lat,
          longitude: long,
          timestamp: DateTime.fromMillisecondsSinceEpoch(positionTimestamp),
          accuracy: 1.0, //think this means perfectly accurate? not yet used, so I'm just setting a default
        altitude: 1.0,   //same as above, altitude is not used
        altitudeAccuracy: 1.0,  //same as above, altitude is not used
        heading: 0.0, //again not used, but could be usefull?
        speed: 0.0,  //not used
        headingAccuracy: 0.0, //not used
        speedAccuracy: 0.0, //not used
      );
    }
    //if we got here, we have written a timestamp but the lat/long are missing, so we should just get a new position
  }
  //if we got here, we have no timestamp or the timestamp is too old, so we should just get a new position
  bool serviceEnabled;
  LocationPermission permission;

  // Test if location services are enabled.
  serviceEnabled = await Geolocator.isLocationServiceEnabled();
  if (!serviceEnabled) {
    // Location services are not enabled don't continue
    // accessing the position and request users of the
    // App to enable the location services.
    return Future.error('Location services are disabled.');
  }

  permission = await Geolocator.checkPermission();
  if (permission == LocationPermission.denied) {
    permission = await Geolocator.requestPermission();
    if (permission == LocationPermission.denied) {
      // Permissions are denied, next time you could try
      // requesting permissions again (this is also where
      // Android's shouldShowRequestPermissionRationale
      // returned true. According to Android guidelines
      // your App should show an explanatory UI now.
      return Future.error('Location permissions are denied');
    }
  }

  if (permission == LocationPermission.deniedForever) {
    // Permissions are denied forever, handle appropriately.
    return Future.error(
        'Location permissions are permanently denied, we cannot request permissions.');
  }

  // When we reach here, permissions are granted and we can
  // continue accessing the position of the device.
  final Position position = await Geolocator.getCurrentPosition();
  prefs.setDouble('lat', position.latitude);
  prefs.setDouble('long', position.longitude);
  prefs.setInt('positionTimestamp', now);
  return position;
}