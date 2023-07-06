import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class DottedContainer extends StatelessWidget {
  const DottedContainer({Key? key,  this.image}) : super(key: key);

  final image;

  @override
  Widget build(BuildContext context) {
    const borderRadius = BorderRadius.all(Radius.circular(15));
    return
      Container(
          height: 88,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: DottedBorder(
            borderType: BorderType.RRect,
            color: const Color(0x521db9dd),
            radius:  const Radius.circular(15),
            strokeWidth: 1,
            dashPattern: const [6],
            child: ClipRRect(
              borderRadius: borderRadius,
              child: Container(
                color: const Color(0x33000000),
                child: Center(
                  child: Stack(alignment: Alignment.center,
                    children: [
                      image ?? const SizedBox(),
                      const Icon(Icons.add, color: Color(0xFF01B8FF),)
                    ],),
                ),
              ),
            ),
          ));
  }
}
