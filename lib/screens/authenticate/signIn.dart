import 'package:Flutter_Firebase/screens/components/customTextField.dart';
import 'package:Flutter_Firebase/screens/components/strechedButton.dart';
import 'package:Flutter_Firebase/services/auth.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xFF5AAA8B),
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Image.asset('images/logo.png'),
        ),
        centerTitle: true,
        title: Text(
          'Starbucks',
          style: TextStyle(
            fontSize: 34.0,
            fontFamily: 'Lato',
            fontWeight: FontWeight.w600,
          ),
        ),
        elevation: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 24.0),
              child: Text(
                "Sign in",
                style: TextStyle(
                    fontSize: 34.0,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Lato'),
              ),
            ),
            CustomTextField(
              textLabel: 'Email',
              textHint: 'Enter your email',
              textHelper: 'Keep it SHORT',
              icon: Icons.person,
            ),
            CustomTextField(
              textLabel: 'Password',
              textHint: 'Enter your password',
              textHelper: 'Keep it STRONG',
              icon: Icons.lock,
            ),
            StrechedButton(name: 'Sign in', authService: this._auth),
            Row(
              children: <Widget>[
                Spacer(),
                Text('or'),
                Spacer(),
              ],
            ),
            StrechedButton(
                name: 'Sign in Anonymously', authService: this._auth),
          ],
        ),
      ),
    );
  }
}
