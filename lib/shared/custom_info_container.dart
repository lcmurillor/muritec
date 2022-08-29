import 'package:app_muritec/theme/theme.dart';
import 'package:flutter/Material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomInfoContainer extends StatelessWidget {
  const CustomInfoContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      padding: (width > 650)
          ? MainTheme.mainPadding
          : const EdgeInsets.symmetric(horizontal: 40),
      width: width,
      color: MainTheme.grayBlue,
      child: Column(
          crossAxisAlignment: (width > 650)
              ? CrossAxisAlignment.center
              : CrossAxisAlignment.start,
          children: [
            Container(
                margin: EdgeInsets.symmetric(vertical: (width > 650) ? 40 : 20),
                child: const CustomContainer(
                  path: 'assets/target.svg',
                  title: 'Misión',
                  text:
                      'Ofrecer servicios orientados en las Tecnológicas de la Información, los cuales se puedan ajustar a las necesidades de cualquier tipo de cliente. Con nuestro equipo situado en el Cantón de Tilarán, buscamos ayudar a las personas de nuestra comunidad, instruyéndolos acerca de la tecnología y como innovarse.',
                )),
            Container(
                margin: EdgeInsets.symmetric(vertical: (width > 650) ? 40 : 20),
                child: const CustomContainer(
                  path: 'assets/idea.svg',
                  title: 'Visión',
                  text:
                      'Ser una empresa reconocida a nivel nacional la cual brinda servicios enfocados principalmente en el área de desarrollo de software. A su vez brindar oportunidad de experiencia laboral a jóvenes de zonas rurales que estén interesados en la tecnología.',
                )),
            Container(
                margin: EdgeInsets.symmetric(vertical: (width > 650) ? 40 : 20),
                child: const CustomContainer(
                  path: 'assets/love.svg',
                  title: 'Valores',
                  text:
                      'Honestidad. Transparencia. Calidad. Seguridad. Empatía. Creatividad.',
                )),
          ]),
    );
  }
}

class CustomContainer extends StatelessWidget {
  const CustomContainer(
      {Key? key, required this.text, required this.title, required this.path})
      : super(key: key);
  final String text;
  final String title;
  final String path;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    if (width > 650) {
      return Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title,
                    style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 72)),
                SizedBox(
                  width: width * 0.40,
                  child: Text(text,
                      style: GoogleFonts.lato(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 18)),
                ),
              ],
            ),
            Container(
                alignment: Alignment.center, child: SvgPicture.asset(path))
          ]);
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: GoogleFonts.poppins(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 50),
        ),
        SizedBox(
          child: Text(text,
              style: GoogleFonts.lato(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 14)),
        ),
      ],
    );
  }
}
