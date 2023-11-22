import 'package:flutter/material.dart';
// import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

class MapUtils {
  static TextEditingController addressController = TextEditingController();

  MapUtils._();

  static Future<void> openMap(context) async {
    // String googleUrl = 'https://www.google.com/maps/search/?api=1&query=$latitude,$longitude';
    String query = Uri.encodeComponent(addressController.text);
    String googleUrl = 'https://www.google.com/maps/search/?api=1&query=$query';
    if (await canLaunchUrlString(googleUrl)) {
      await launchUrlString(googleUrl, mode: LaunchMode.platformDefault);
    } else {
      const snackBar = SnackBar(
        content: Text('Could not open the map.'),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
      throw 'Could not open the map.';
    }
  }
}
