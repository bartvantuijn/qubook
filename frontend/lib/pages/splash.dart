import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:qubook/pages/home.dart';
import 'package:qubook/pages/login.dart';
import 'package:qubook/widgets/gradient.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  final _storage = const FlutterSecureStorage();

  @override
  void initState() {
    super.initState();
    _checkToken();
  }

  Future<void> _checkToken() async {
    final token = await _storage.read(key: 'token');

    if (!mounted) return;

    Navigator.pushReplacement(context, MaterialPageRoute(
        builder: (_) => token != null ? const HomePage() : const LoginPage()
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GradientWidget(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: const CircularProgressIndicator(),
        ),
      )
    );
  }
}