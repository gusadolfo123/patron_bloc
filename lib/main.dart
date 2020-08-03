import 'package:flutter/material.dart';
import 'package:patron_bloc/src/pages/login_page.dart';
import 'package:patron_bloc/src/providers/login_provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LoginProvider(
      child: MaterialApp(
        title: 'Login App',
        debugShowCheckedModeBanner: false,
        home: LoginPage(),
      ),
    );
  }
}
