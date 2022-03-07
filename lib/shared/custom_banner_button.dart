import 'package:app_muritec/theme/theme.dart';
import 'package:app_muritec/views/about_view.dart';
import 'package:flutter/Material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomBannerButton extends StatelessWidget {
  const CustomBannerButton(
      {Key? key,
      required this.widget,
      required this.height,
      required this.width})
      : super(key: key);

  final AboutView widget;
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      style: ButtonStyle(
        overlayColor: MaterialStateProperty.all<Color>(Colors.transparent),
      ),
      /**
       * Este contenedor construye la caja del boton con todos los estilos y colores.
       */
      child: Container(
        height: (widget.width > 740)
            ? widget.height * height
            : widget.height * height,
        width:
            (widget.width > 740) ? widget.width * width : widget.width * width,
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
          child: Text('Contáctanos',
              softWrap: true,
              maxLines: 4,
              style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.w500)),
        ),
      ),
    );
  }
}
