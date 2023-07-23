import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class ContactProvider extends ChangeNotifier {
  void sendContactInfo({
    required String name,
    required String email,
    required String message,
  }) async {
    try {
      var response = await http.post(
        Uri.parse(
            "https://vaibhav-vadle-default-rtdb.firebaseio.com/contact.json"),
        body: json.encode(
          {
            "name": name,
            "email": email,
            "message": message,
          },
        ),
      );
      // ignore: avoid_print
      print("RESPONSE: ${response.body}");
    } catch (e) {
      // ignore: avoid_print
      print("Error: $e");
    }
  }
}
