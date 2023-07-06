import 'package:flutter/material.dart';

class HeaderContainer extends StatelessWidget {
  const HeaderContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(alignment: Alignment.bottomCenter,
        children:[
          SizedBox(
              width: 428,
              height: 242,
              child: Image.asset(
                fit: BoxFit.contain,
                "assets/img.png",)
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 10.0, left: 5),
            width: 138,
            height: 138,
            child:  CircleAvatar(
                backgroundColor: const Color(0xFF01B8FF),
                foregroundColor: const Color(0xFF446875),
                child: SizedBox(child: Image.asset(width: 59, "assets/img_1.png",))
            ),
          ),
          Positioned(right: 5,top: 78, child: Image.asset(width: 59, "assets/img_7.png",))
        ]
    );
  }
}
