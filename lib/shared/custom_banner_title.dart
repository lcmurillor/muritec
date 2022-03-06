import 'package:flutter/Material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomBannerTitle extends StatelessWidget {
  const CustomBannerTitle(
      {Key? key,
      required this.width,
      required this.widthTitleValue,
      required this.widthTextValue})
      : super(key: key);

  final double width;
  final double widthTitleValue;
  final double widthTextValue;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /**
         * Costructor del titulo con la tipografia de Muritec
         */
        SizedBox(
          child: FittedBox(
            fit: BoxFit.contain,
            child: Text('MuriTEC',
                style: GoogleFonts.audiowide(
                    color: Colors.white,
                    fontSize: (width > 740)
                        ? width * widthTitleValue
                        : width * widthTitleValue)),
          ),
        ),
        /**
         * Constructor de parrafo inferir con la descripcion breve de muritec
         */
        FittedBox(
          fit: BoxFit.cover,
          child: SizedBox(
            width: (width > 740)
                ? (width * widthTextValue) - 100
                : (width * widthTextValue),
            child: Text(
                'Somos un equipo multidisciplinario enfocado en las distintas áreas de las Tecnologías de la información.',
                softWrap: true,
                maxLines: 4,
                style: GoogleFonts.poppins(
                    color: Colors.white, fontSize: (width > 740) ? 22 : 14)),
          ),
        )
      ],
    );
  }
}
