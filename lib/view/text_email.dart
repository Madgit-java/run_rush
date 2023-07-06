import 'package:flutter/material.dart';

class TextEmail extends StatelessWidget {
  const TextEmail({Key? key, this.email, this.name}) : super(key: key);

  final email;
  final name;

  @override
  Widget build(BuildContext context) {
    return Container(height: 20,
      child: Text(
          "Hello $name, $email",
          style: const TextStyle(
            color: Color(0xffffffff),
            fontSize: 20,
            fontWeight: FontWeight.w800,
          ),textAlign: TextAlign.center,
      ),
    );
  }
}
