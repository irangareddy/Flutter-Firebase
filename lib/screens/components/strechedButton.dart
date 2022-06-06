import 'package:flutter/material.dart';
import 'package:Flutter_Firebase/services/auth.dart';

class StrechedButton extends StatelessWidget {
  StrechedButton({@required this.name, this.authService});

  final AuthService authService;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30.0, horizontal: 16.0),
      child: RaisedButton(
        onPressed: () async {
          dynamic result = await authService.signInAnon();
          if (result == null) {
            print('Error in Signing');
          } else {
            print('SignIn Anonymously');
            print(result);
          }
        },
        color: Color(0xFF388F6A),
        elevation: 0.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
            '$name',
            style: TextStyle(
                color: Colors.white,
                fontSize: 24.0,
                fontFamily: 'Lato',
                fontWeight: FontWeight.w900),
          ),
        ),
      ),
    );
  }
}
