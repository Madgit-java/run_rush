import 'package:flutter/material.dart';

class TextBottomEmail extends StatelessWidget {
  const TextBottomEmail({Key? key, this.text}) : super(key: key);

  final text;

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(width: 10, "assets/img_2.png",),
        Text(
            " id = $text",
            style: const TextStyle(
              color: Color(0xffffffff),
              fontSize: 14,
              fontWeight: FontWeight.w600,
            )
        ),
      ],
    );
  }
}
