import 'package:app_muritec/shared/sheards.dart';
import 'package:app_muritec/theme/theme.dart';
import 'package:app_muritec/views/views.dart';
import 'package:flutter/Material.dart';
import 'package:flutter/gestures.dart';

class CustomServicesScrollCard extends StatelessWidget {
  const CustomServicesScrollCard({
    Key? key,
    required this.widget,
  }) : super(key: key);

  final AboutView widget;

  @override
  Widget build(BuildContext context) {
    final ScrollController controller = ScrollController();
    return Container(
      width: double.infinity,
      height: 500,
      color: MainTheme.graySoft,
      child: ScrollConfiguration(
        behavior: ScrollConfiguration.of(context).copyWith(dragDevices: {
          PointerDeviceKind.touch,
          PointerDeviceKind.mouse,
        }),
        child: ListView.builder(
          controller: controller,
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
