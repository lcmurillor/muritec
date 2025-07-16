import 'package:app_muritec/theme/theme.dart';
import 'package:flutter/Material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:app_muritec/router/router.dart';
import 'package:app_muritec/services/navigation_service.dart';

class CustomBannerButton extends StatelessWidget {
  const CustomBannerButton(
      {Key? key, required this.height, required this.width})
      : super(key: key);

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return TextButton(
      onPressed: () {
         NavigationService.replaceTo(Flurorouter.contactusRoute);
      },
      style: ButtonStyle(
        overlayColor: WidgetStateProperty.all<Color>(Colors.transparent),
      ),
      /**
       * Este contenedor construye la caja del boton con todos los estilos y colores.
       */
      child: Container(
        height:
            (size.width > 740) ? size.height * height : size.height * height,
        width: (size.width > 740) ? size.width * width : size.width * width,
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
