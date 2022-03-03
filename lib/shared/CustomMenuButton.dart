// ignore_for_file: file_names

import 'package:animate_do/animate_do.dart';
import 'package:app_muritec/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomMenuButton extends StatefulWidget {
  const CustomMenuButton(
      {Key? key,
      required this.text,
      required this.onPressed,
      required this.marginLeft,
      this.marginVertical,
      required this.delay,
      this.fontSize})
      : super(key: key);
  final String text;
  final Function onPressed;
  final double marginLeft;
  final double? marginVertical;
  final int delay;
  final double? fontSize;

  @override
  State<CustomMenuButton> createState() => _CustomMenuButtonState();
}

class _CustomMenuButtonState extends State<CustomMenuButton> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return FadeInLeft(
      from: 40,
      duration: const Duration(milliseconds: 200),
      delay: Duration(milliseconds: widget.delay),
      child: MouseRegion(
        onEnter: (_) => setState(() => isHover = true),
        onExit: (_) => setState(() => isHover = false),
        child: Container(
          margin: EdgeInsets.only(
              left: widget.marginLeft,
              top: widget.marginVertical ?? 0,
              bottom: widget.marginVertical ?? 0),
          child: TextButton(
              style: ButtonStyle(
                padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                    const EdgeInsets.all(0)),
                overlayColor:
                    MaterialStateProperty.all<Color>(Colors.transparent),
              ),
              onPressed: () => widget.onPressed(),
              child: Text(
                widget.text,
                style: GoogleFonts.poppins(
                    fontSize: widget.fontSize ?? 18,
                    //fontWeight: isHover ? FontWeight.bold : FontWeight.normal,
                    color: isHover ? Colors.black : MainTheme.mainGray),
              )),
        ),
      ),
    );
  }
}
