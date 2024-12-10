import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class HomeScreen extends StatelessWidget {
  final _storage = FlutterSecureStorage();

  Future<void> logout(BuildContext context) async {
    await _storage.delete(key: 'token');
    Navigator.pushReplacementNamed(context, '/login');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        actions: [IconButton(onPressed: () => logout(context), icon: Icon(Icons.logout))],
      ),
      body: Center(child: Text('¡Bienvenido!')),
    );
  }
}
