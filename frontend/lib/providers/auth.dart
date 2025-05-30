import 'dart:convert';
import 'package:http/http.dart' as http;

class AuthProvider {
  static const String endpoint = 'http://127.0.0.1:8000/api';

  static Future<String> login(String email, String password) async {
    try {
      final response = await http.post(
        Uri.parse('$endpoint/auth/login'),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({
          'email': email,
          'password': password,
        }),
      );

      final data = jsonDecode(response.body);

      if (data['status'] == true) {
        return data['token'];
      } else {
        throw Exception(data['message'] ?? 'Login failed');
      }
    } catch (e) {
      throw Exception(e.toString().replaceFirst('Exception: ', ''));
    }
  }
}