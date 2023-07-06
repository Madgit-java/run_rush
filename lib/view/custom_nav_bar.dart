import 'package:flutter/material.dart';

class CustomNavBar extends StatefulWidget {
  const CustomNavBar({Key? key, }) : super(key: key);

  @override
  State<CustomNavBar> createState() => _CustomNavBarState();
}

class _CustomNavBarState extends State<CustomNavBar> {

  double margin = 0;
  int opacity = 0;

  style(){
    return
      ElevatedButton.styleFrom(
        foregroundColor: Colors.transparent,
        elevation: 0,
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
      );
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.symmetric(horizontal: 15),
      height: 64,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(32),
          color: const Color(0x33000000)),
      child: Stack(
        children: [
          AnimatedContainer(
            margin: EdgeInsets.only(left: margin),
            width: MediaQuery.of(context).size.width/2,
            decoration:  BoxDecoration(borderRadius: BorderRadius.circular(32),
              gradient: margin == 0
                  ? const LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  Color(0x83817fd2),
                  Color(0x33000000),
                ],
              )
                  : margin > 160
                  ? const LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  Color(0x33000000),
                  Color(0x83817fd2),
                ],
              )
                  : const LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  Color(0x33000000),
                  Color(0x83817fd2),
                  Color(0x33000000),
                ],
              )
          ), duration: const Duration(milliseconds: 200),
        ),
          Center(
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                onPressed: (){
                  setState(() {
                  opacity = 0;
                  margin = 0;
                });},
                style: style(),
                child: Opacity(
                  opacity: opacity == 0 ? 1 : 0.5,
                  child: Image.asset(
                    "assets/img_8.png",height: 40,),
                ),
                  ),
                ElevatedButton(
                  onPressed: (){
                    setState(() {
                      opacity = 1;
                    margin = 40;
                  });
                    },
                  style: style(),
                  child: Opacity(
                    opacity: opacity == 1 ? 1 : 0.5,
                    child: Image.asset(
                      "assets/img_9.png",height: 40,),
                  ),
                ),
                ElevatedButton(
                  onPressed: (){
                    setState(() {
                      opacity = 2;
                      margin = 130;
                    });
                  },
                  style: style(),
                  child: Opacity(
                    opacity: opacity == 2 ? 1 : 0.5,
                    child: Image.asset(
                      "assets/img_10.png",height: 40,),
                  ),
                ),
                ElevatedButton(
                  onPressed: (){
                    setState(() {
                      opacity = 3;
                      margin = 170;
                    });
                  },
                  style: style(),
                  child: Opacity(
                    opacity: opacity == 3 ? 1 : 0.5,
                    child: Image.asset(
                      "assets/img_11.png", height: 40,),
                  ),
                ),
              ]),
          ),
        ],
      ),
    );
  }
}
