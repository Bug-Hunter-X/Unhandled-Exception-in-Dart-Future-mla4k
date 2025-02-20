```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Process the JSON response
      final jsonResponse = json.decode(response.body);
      // Access data using jsonResponse['key']
    } else {
      // Handle error response
      throw Exception('Failed to load data. Status code: ${response.statusCode}');
    }
  } catch (e) {
    // Handle exceptions
    print('Error: $e');
    // Rethrow the exception to be handled by a higher level
    rethrow;
  }
}
```