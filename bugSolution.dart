```dart
Future<Map<String, dynamic>?> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      print('Error: API request failed with status code ${response.statusCode}');
      return null; // Or throw a custom exception
    }
  } catch (e) {
    print('Error: $e');
    return null; // Indicate failure
  }
}

void main() async {
  final data = await fetchData();
  if (data != null) {
    print('Data received: $data');
  } else {
    print('Failed to fetch data.');
  }
}
```