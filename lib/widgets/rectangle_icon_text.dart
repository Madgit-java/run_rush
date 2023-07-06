import 'package:flutter/material.dart';

class RectangleIconText extends StatelessWidget {
  const RectangleIconText({Key? key,
    this.image,
    this.text}) : super(key: key);

  final image;
  final text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.symmetric(horizontal: 15),
      height: 32,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(32),
          color: const Color(0x33000000)),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            image,
            width: 59,),
          Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: Text(
                text,
                style: const TextStyle(
                  color: Color(0xffffffff),
                  fontSize: 16,
                  fontWeight: FontWeight.w800,
                )
            ),
          ),
        ],),
    );
  }
}
