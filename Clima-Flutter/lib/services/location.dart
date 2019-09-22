import 'package:geolocator/geolocator.dart';

class Location {
  double _longitude, _latitude;
  Future<void> getCurrentLocation() async {
    try {
      Position position = await Geolocator()
          .getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
      _latitude = position.latitude;
      _longitude = position.longitude;
    } catch (e) {
      print(e);
    }
  }

  double getLongitude() {
    return _longitude;
  }

  double getLatitude() {
    return _latitude;
  }
}
