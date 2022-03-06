import 'package:app_muritec/views/about_view.dart';
import 'package:flutter/Material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomBannerButton extends StatelessWidget {
  const CustomBannerButton({Key? key, required this.widget}) : super(key: key);

  final AboutView widget;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      style: ButtonStyle(
        overlayColor: MaterialStateProperty.all<Color>(Colors.transparent),
      ),
      child: Container(
        height:
            (widget.width > 740) ? widget.height * 0.10 : widget.height * 0.07,
        width: (widget.width > 740) ? widget.width * 0.20 : widget.width * 0.50,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            gradient: const LinearGradient(colors: [
              Color.fromRGBO(34, 102, 164, 1),
              Color.fromRGBO(36, 154, 218, 1)
            ], stops: [
              0.1,
              0.9
            ], begin: Alignment.centerLeft, end: Alignment.centerRight)),
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: FittedBox(
          fit: BoxFit.contain,
          child: Text('Contáctanos',
              softWrap: true,
              maxLines: 4,
              style: GoogleFonts.poppins(color: Colors.white, fontSize: 25)),
        ),
      ),
    );
  }
}
