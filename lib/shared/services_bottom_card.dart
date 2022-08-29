import 'package:app_muritec/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class ServicesBottomCard extends StatelessWidget {
  const ServicesBottomCard(
      {Key? key,
      required this.title,
      required this.text,
      required this.top,
      required this.bottom})
      : super(key: key);
  final String title;
  final String text;
  final double top;
  final double bottom;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
        margin: EdgeInsets.only(top: top, bottom: bottom),
        padding: EdgeInsets.symmetric(vertical: (width > 910) ? 40 : 5),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                  color: MainTheme.shadowBlue,
                  offset: const Offset(0, 8),
                  blurRadius: 34)
            ]),
        child: (width > 910)
            ? Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    width: width * 0.30,
                    child: Center(
                      child: FittedBox(
                        fit: BoxFit.contain,
                        child: GradientText(
                          title,
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w700,
                            fontSize: 45,
                          ),
                          gradientType: GradientType.linear,
                          gradientDirection: GradientDirection.ltr,
                          colors: [MainTheme.darkBlue, MainTheme.lightBlue],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                      width: width * 0.40,
                      child: Text(
                        text,
                        style: GoogleFonts.lato(
                            fontSize: 18, fontWeight: FontWeight.w500),
                      ))
                ],
              )
            : Column(children: [
                const SizedBox(height: 40),
                SizedBox(
                  width: width * 0.70,
                  child: Center(
                    child: FittedBox(
                      fit: BoxFit.contain,
                      child: GradientText(
                        title,
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w700,
                          fontSize: 45,
                        ),
                        gradientType: GradientType.linear,
                        gradientDirection: GradientDirection.ltr,
                        colors: [MainTheme.darkBlue, MainTheme.lightBlue],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 40),
                Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: (width > 600) ? 30 : 20),
                    child: Text(
                      text,
                      style: GoogleFonts.lato(
                          fontSize: 18, fontWeight: FontWeight.w500),
                    )),
                const SizedBox(height: 40),
              ]));
  }
}
