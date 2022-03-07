import 'package:app_muritec/theme/theme.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/Material.dart';
import 'package:google_fonts/google_fonts.dart';

class ServicesTopCard extends StatelessWidget {
  const ServicesTopCard(
      {Key? key, required this.path, required this.title, required this.text})
      : super(key: key);
  final String path;
  final String title;
  final String text;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 70, horizontal: width * 0.03),
      width: 320,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
                color: MainTheme.shadowBlue,
                offset: const Offset(0, 8),
                blurRadius: 34)
          ]),
      child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
        const SizedBox(height: 10),
        /**
         * Logo superiro de cada card
         */
        Container(
            padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 30),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              // boxShadow: [
              //   BoxShadow(
              //       color: MainTheme.shadowBlue,
              //       offset: const Offset(0, 0),
              //       blurRadius: 40)
              // ],
            ),
            child: SvgPicture.asset(path)),
        /**
         * Titulo proncial del Card
         */
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(title,
              style: GoogleFonts.poppins(
                  color: MainTheme.darkBlue,
                  fontWeight: FontWeight.w500,
                  fontSize: 30)),
        ),
        /**
         * Texfo del Card
         */
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(text,
              style: GoogleFonts.lato(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 15)),
        ),
        /**
         * Boton de la parte inferior
         */
        const Spacer(),
        TextButton(
          onPressed: () {},
          style: ButtonStyle(
            overlayColor: MaterialStateProperty.all<Color>(Colors.transparent),
          ),
          child: Container(
            margin: const EdgeInsets.symmetric(vertical: 20),
            height: 50,
            width: 200,
            /**
           * Efecto de degradado del contenedor
           */
            decoration: MainTheme.buttonDecoration,
            alignment: Alignment.center,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            /**
           * Ajuste del tecxto la tamaño del contenedor
           */
            child: FittedBox(
              fit: BoxFit.contain,
              child: Text('Leer más',
                  softWrap: true,
                  maxLines: 4,
                  style:
                      GoogleFonts.poppins(color: Colors.white, fontSize: 20)),
            ),
          ),
        )
      ]),
    );
  }
}
