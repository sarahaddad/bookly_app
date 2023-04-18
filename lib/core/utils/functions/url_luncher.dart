import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> customLuncherUrl(String? url, context) async {
  if (url != null) {
    final Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('cannot lunch url'),
        ),
      );
    }
  }
}
