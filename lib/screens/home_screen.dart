import 'package:flutter/material.dart';
import 'package:flutter_auth_example/services/auth_service.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final authService = Provider.of<AuthService>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text('You\'re in the Home Screen'),
          Center(
            child: ElevatedButton(
              child: Text('Logout'),
              onPressed: () async {
                await authService.signOut();
              },
            ),
          ),
        ],
      ),
    );
  }
}
