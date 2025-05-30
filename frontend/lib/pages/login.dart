import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:qubook/pages/home.dart';
import 'package:qubook/providers/auth.dart';
import 'package:qubook/styles/text.dart';
import 'package:qubook/widgets/gradient.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _storage = const FlutterSecureStorage();

  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  bool _loading = false;
  String? _error;

  Future<void> _login() async {
    final email = _emailController.text.trim();
    final password = _passwordController.text;

    setState(() {
      _loading = true;
      _error = null;
    });

    try {
      final token = await AuthProvider.login(email, password);
      await _storage.write(key: 'token', value: token);

      if (!mounted) return;

      Navigator.pushReplacement(context, MaterialPageRoute(
          builder: (_) {
            return const HomePage();
          }
        ),
      );
    } catch (e) {
      setState(() => _error = e.toString().replaceFirst('Exception: ', ''));
    } finally {
      setState(() => _loading = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return GradientWidget(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Text(
                  'Sign in',
                  style: AppText.h1,
                  textAlign: TextAlign.center,
                ),

                const SizedBox(height: 12),

                const Text(
                  'Hi! Welcome back, you\'ve been missed.',
                  style: AppText.subtitle,
                  textAlign: TextAlign.center,
                ),

                const SizedBox(height: 36),

                TextField(
                  controller: _emailController,
                  decoration: InputDecoration(
                    labelText: 'Email',
                    filled: true,
                    fillColor: Theme.of(context).brightness == Brightness.dark ? Colors.grey[900] : Colors.grey[100],
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    ),
                  ),
                  keyboardType: TextInputType.emailAddress,
                ),

                const SizedBox(height: 12),

                TextField(
                  controller: _passwordController,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    filled: true,
                    fillColor: Theme.of(context).brightness == Brightness.dark ? Colors.grey[900] : Colors.grey[100],
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    ),
                  ),
                  obscureText: true,
                ),

                const SizedBox(height: 12),

                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {},
                    child: Text('Forgot password?'),
                  ),
                ),

                const SizedBox(height: 12),

                ElevatedButton(
                  onPressed: _loading ? null : _login,
                  child: _loading ? const SizedBox(
                    width: 24,
                    height: 24,
                    child: CircularProgressIndicator(strokeWidth: 2),
                  ) : const Text('Login'),
                ),

                if (_error != null)
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    child: Text(
                      _error!,
                      style: AppText.danger,
                      textAlign: TextAlign.center,
                    ),
                  ),

                const SizedBox(height: 12),

                TextButton(
                  onPressed: () {},
                  child: Text('Don\'t have an account? Sign up'),
                ),
              ]
            )
          )
        ),
      )
    );
  }
}