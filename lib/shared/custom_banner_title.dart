import 'package:app_muritec/views/about_view.dart';
import 'package:flutter/Material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomBannerTitle extends StatelessWidget {
  const CustomBannerTitle({Key? key, required this.widget}) : super(key: key);

  final AboutView widget;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          child: FittedBox(
            fit: BoxFit.contain,
            child: Text('MuriTEC',
                style: GoogleFonts.audiowide(
                    color: Colors.white,
                    fontSize: (widget.width > 740)
                        ? widget.width * 0.05
                        : widget.width * 0.10)),
          ),
        ),
        FittedBox(
          fit: BoxFit.cover,
          child: SizedBox(
            width: (widget.width > 740)
                ? (widget.width * 0.6) - 100
                : (widget.width * 0.7),
            child: Text(
                'Somos un equipo multidisciplinario enfocado en las distintas áreas de las Tecnologías de la información.',
                softWrap: true,
                maxLines: 4,
                style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: (widget.width > 740) ? 22 : 14)),
          ),
        )
      ],
    );
  }
}
