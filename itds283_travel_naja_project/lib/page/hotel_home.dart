import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> main() async {
  final apiKey = 'YOUR_API_KEY';
  final url = Uri.parse('https://test.api.amadeus.com/v2/reference-data/locations?subType=AIRPORT');
  final response = await http.get(
    url,
    headers: {'Authorization': 'Bearer $apiKey'},
  );

  if (response.statusCode == 200) {
    final data = jsonDecode(response.body);
    print(data);
  } else {
    print('Request failed with status: ${response.statusCode}.');
  }
}
