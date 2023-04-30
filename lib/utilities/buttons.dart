import 'package:flutter/material.dart';
import 'package:wallet/styling.dart';

class My_Button extends StatefulWidget {
  const My_Button({Key? key, required this.imagepath, required this.buttonText})
      : super(key: key);
  final String imagepath;
  final String buttonText;

  @override
  State<My_Button> createState() => My_ButtonState();
}

class My_ButtonState extends State<My_Button> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(20),
          height: 90,
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
                color: Colors.grey.shade400, blurRadius: 30, spreadRadius: 10)
          ], color: Colors.white70, borderRadius: BorderRadius.circular(20)),
          child: Image.asset(widget.imagepath),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          widget.buttonText,
          style: style18()
              .copyWith(fontWeight: FontWeight.normal, letterSpacing: 0.5),
        )
      ],
    );
  }
}
