import 'package:app_muritec/shared/sheards.dart';
import 'package:app_muritec/theme/theme.dart';
import 'package:app_muritec/views/views.dart';
import 'package:flutter/Material.dart';
import 'package:flutter/gestures.dart';

class CustomServicesScrollCard extends StatelessWidget {
  ///Esta es una lista horizontal de lementos que se dispone en larte superior de la página
  ///Toma en cuenta las considereaciones del tamaño horizontal para ajustar el contendio  en relación
  ///a la pantalla. Como estamos hablando de un elementos de scroll lateral, en dimesiones vertiales
  ///solo ajusta el tamaño del car para que sea mas comodo y se disminuye la cantidad de card
  ///que se pueden ver en pantalla-
  const CustomServicesScrollCard({
    Key? key,
    required this.widget,
  }) : super(key: key);

  final AboutView widget;

  @override
  Widget build(BuildContext context) {
    ScrollController scrollcontroller = ScrollController();
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

        ///Construye una lista de elementos de maera reterativa, a los que se les manda valores especificos
        ///a cada uno de las costrucciones.
        child: ListView.builder(
          padding: EdgeInsets.symmetric(
              horizontal: (widget.width > 400) ? widget.width * 0.10 : 0),
          physics: const BouncingScrollPhysics(),
          itemCount: 3,
          scrollDirection: Axis.horizontal,
          itemBuilder: (_, index) {
            if (index == 0) {
              return const ServicesTopCard(
                  path: 'assets/pc.svg',
                  text:
                      'Mantenimiento preventivo y correctivo de equipos informáticos como computadoras portátiles, de escritorio e impresoras.',
                  title: 'Computación');
            } else if (index == 1) {
              return const ServicesTopCard(
                  path: 'assets/red.svg',
                  text:
                      'Cotización, venta e instalación de equipos de red para entornos domésticos.',
                  title: 'Redes');
            }
            return const ServicesTopCard(
                path: 'assets/code.svg',
                text:
                    'Desarrollo de aplicaciones multiplataforma a media, implantando las tecnologías más populares y solicitas del mercado actual.',
                title: 'programación');
          },
        ),
      ),
    );
  }
}
