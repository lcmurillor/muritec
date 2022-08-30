import 'package:app_muritec/shared/sheards.dart';
import 'package:app_muritec/theme/theme.dart';
import 'package:flutter/Material.dart';
import 'package:flutter/gestures.dart';

class CustomServicesScrollCard extends StatelessWidget {
  ///Esta es una lista horizontal de lementos que se dispone en la parte superior de la página
  ///Toma en cuenta las considereaciones del tamaño horizontal para ajustar el contendio  en relación
  ///a la pantalla. Como estamos hablando de un elementos de scroll lateral, en dimesiones vertiales
  ///solo ajusta el tamaño del card para que sea más comodo y se disminuye la cantidad de card
  ///que se pueden ver en pantalla.
  const CustomServicesScrollCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Container(
      width: double.infinity,
      height: 500,
      color: MainTheme.graySoft,

      ///Permite tener un control sobre el método de despazamiento en la interfaz "scroll"
      ///en este caso, permite hacer sroll de manere horizontal para ver los servicios.
      child: ScrollConfiguration(
        behavior: ScrollConfiguration.of(context).copyWith(dragDevices: {
          PointerDeviceKind.touch,
          PointerDeviceKind.mouse,
        }),

        ///Construye una lista de elementos de manera reiterativa, a los que se les manda valores especificos
        ///a cada uno de las costrucciones.
        child: ListView.builder(
          padding: EdgeInsets.symmetric(
              horizontal: (width > 400) ? width * 0.10 : 0),
          physics: const BouncingScrollPhysics(),
          itemCount: 3,
          scrollDirection: Axis.horizontal,
          itemBuilder: (_, index) {
            if (index == 0) {
              return ServicesTopCard(
                  path: 'assets/pc.svg',
                  text:
                      'Mantenimiento preventivo y correctivo de equipos informáticos como computadoras portátiles, de escritorio e impresoras.',
                  title: 'Computación',
                  position: getPosition(width));
            } else if (index == 1) {
              return ServicesTopCard(
                  path: 'assets/red.svg',
                  text:
                      'Cotización, venta e instalación de equipos de red para entornos domésticos.',
                  title: 'Redes',
                  position: getPosition(width) + 500);
            }
            return ServicesTopCard(
                path: 'assets/code.svg',
                text:
                    'Desarrollo de aplicaciones multiplataforma a media, implantando las tecnologías más populares y solicitas del mercado actual.',
                title: 'Programación',
                position: getPosition(width) + 900);
          },
        ),
      ),
    );
  }

  double getPosition(double width) {
    double value = 0;
    if (width > 1200) {
      value = 1900;
    } else if (width > 800) {
      value = 2000;
    } else if (width > 600) {
      value = 2100;
    } else {
      value = 1700;
    }
    return value;
  }
}
