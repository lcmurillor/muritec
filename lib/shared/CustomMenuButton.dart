// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomMenuButton extends StatefulWidget {
  const CustomMenuButton(
      {Key? key, required this.text, required this.onPressed})
      : super(key: key);
  final String text;
  final Function onPressed;

  @override
  State<CustomMenuButton> createState() => _CustomMenuButtonState();
}

class _CustomMenuButtonState extends State<CustomMenuButton> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => isHover = true),
      onExit: (_) => setState(() => isHover = false),
      child: TextButton(
          style: ButtonStyle(
            padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                const EdgeInsets.only(left: 40)),
            overlayColor: MaterialStateProperty.all<Color>(Colors.transparent),
          ),
          onPressed: () => widget.onPressed(),
          child: Text(
            widget.text,
            style: GoogleFonts.poppins(
                fontSize: 18,
                //fontWeight: isHover ? FontWeight.bold : FontWeight.normal,
                color: isHover
                    ? Colors.black
                    : const Color.fromRGBO(69, 69, 69, 1)),
          )),
    );
  }
}
