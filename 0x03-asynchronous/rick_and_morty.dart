import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> printRmCharacters() async {
  try {
    String? nextUrl = 'https://rickandmortyapi.com/api/character';
    
    while (nextUrl != null) {
      final response = await http.get(Uri.parse(nextUrl));
      
      if (response.statusCode == 200) {
        final Map<String, dynamic> data = jsonDecode(response.body);
        final List<dynamic> characters = data['results'];
        
        for (var character in characters) {
          print(character['name']);
        }
        
        final Map<String, dynamic>? info = data['info'];
        nextUrl = info?['next'];
      } else {
        throw Exception('Failed to load characters: ${response.statusCode}');
      }
    }
  } catch (error) {
    print('error caught: $error');
  }
}

