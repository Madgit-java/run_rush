import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({Key? key, required this.fun}) : super(key: key);

  final Function() fun;

  @override
  Widget build(BuildContext context) {
    return  Container(height: 52,
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.symmetric(horizontal: 15),
      child: ElevatedButton(
          style: ButtonStyle(
        backgroundColor: MaterialStateProperty.resolveWith<Color>(
                (states) => const Color(0xFF1DB9DD)),
        shape: MaterialStateProperty.resolveWith<OutlinedBorder>((_) {
          return RoundedRectangleBorder(borderRadius: BorderRadius.circular(30));
        }),
        textStyle: MaterialStateProperty.resolveWith<TextStyle>(
                (states) => const TextStyle(color: Colors.red)),
      ),
          onPressed: fun, child: const Text("Start")),
    );
  }
}
