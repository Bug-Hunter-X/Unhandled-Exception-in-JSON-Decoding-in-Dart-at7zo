```dart
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<Map<String, dynamic>?> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      try {
        final data = jsonDecode(response.body);
        if (data is Map<String, dynamic>) {
          return data;
        } else {
          return null; // Or throw a custom exception
        }
      } on FormatException catch (e) {
        print('Error: Invalid JSON format: $e');
        return null; // Or handle the error appropriately
      }
    } else {
      print('Error: Failed to load data. Status code: ${response.statusCode}');
      return null; // Or handle the error appropriately
    }
  } catch (e) {
    print('Error: $e');
    return null; // Or handle the error appropriately
  }
}
```