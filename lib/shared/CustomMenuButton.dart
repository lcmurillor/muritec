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
      required this.paddingLeft,
      this.paddinfVerticlal,
      required this.delay})
      : super(key: key);
  final String text;
  final Function onPressed;
  final double paddingLeft;
  final double? paddinfVerticlal;
  final int delay;

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
        child: TextButton(
            style: ButtonStyle(
              padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                  EdgeInsets.only(
                      left: widget.paddingLeft,
                      top: widget.paddinfVerticlal ?? 0,
                      bottom: widget.paddinfVerticlal ?? 0)),
              overlayColor:
                  MaterialStateProperty.all<Color>(Colors.transparent),
            ),
            onPressed: () => widget.onPressed(),
            child: Text(
              widget.text,
              style: GoogleFonts.poppins(
                  fontSize: 18,
                  //fontWeight: isHover ? FontWeight.bold : FontWeight.normal,
                  color: isHover ? Colors.black : MainTheme.mainGray),
            )),
      ),
    );
  }
}
