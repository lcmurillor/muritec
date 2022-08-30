import 'dart:math';

import 'package:app_muritec/providers/menu_provider.dart';
import 'package:app_muritec/shared/sheards.dart';
import 'package:app_muritec/theme/theme.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ExperienceView extends StatelessWidget {
  const ExperienceView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    MenuProvider menu = Provider.of<MenuProvider>(context);

    final List<String> path1 = [
      'assets/PC_Escritorio3.jpg',
      'assets/Equipo_DVR.jpg',
      'assets/PC_Portatil9.jpg'
    ];
    final List<String> path2 = [
      'assets/Hardware1.jpeg',
      'assets/Hardware2.jpeg',
      'assets/Hardware3.jpeg'
    ];
    final List<String> path3 = [
      'assets/PC_Portatil10.jpg',
      'assets/PC_Portatil3.jpg',
      'assets/PC_Bios1.jpg'
    ];
    final List<String> path4 = [
      'assets/PC_Portatil8.jpg',
      'assets/PC_Portatil20.jpg',
      'assets/PC_Portatil19.jpg'
    ];
    final List<String> path5 = [
      'assets/PC_Caddy1.jpg',
      'assets/PC_Caddy2.jpg',
      'assets/PC_Portatil7.jpg'
    ];

    return SizedBox(
      width: size.width,
      height: (size.width > 910)
          ? size.height - 140
          : size.height - menu.getmenuSize(),
      child: SingleChildScrollView(
          child: Column(
        children: [
          Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: MainTheme.grayBlue,
              ),
              margin: EdgeInsets.symmetric(
                  horizontal: (size.width > 900) ? 100 : 30, vertical: 50),
              child: (size.width > 995)
                  ? Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            _Image(
                              size: size,
                              path: path1,
                              isRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(10)),
                            ),
                            const _Description(
                              title: 'Mantenimiento de Hardware',
                              text:
                                  'Ofrecemos un servicio completo con experiencia en computadoras de escritorio. Este servicio abarca desde los apartados más básicos como limpieza profunda y recambio de pasta térmica, hasta el cambio de componentes ya sea por su mal estado o para actualizar el componente. Puedes traer el componente que seas instalar o podemos venderte partes nuevas a medida.',
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const _Description(
                              title: 'Venta de componentes',
                              text:
                                  'Vendemos componentes electrónicos, ya sea partes para computadoras o equipos de red como enrutadores, puntos de acceso o cables de red hechos a medida. Nuestra solicitud de mayor demanda son los Discos de Estado Solido para actualizar computadoras portátil, además, ofrecemos el servicio de clonación e instalación del nuevo disco.',
                            ),
                            _Image(
                              size: size,
                              path: path2,
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            _Image(size: size, path: path3),
                            const _Description(
                              title: 'Mantenimiento de Software',
                              text:
                                  'Tenemos una gran experiencia en el apartado de software ya que es uno de los servicios más demandas. Justo la clonación de discos duros, podemos Instalar el Sistema Operativo completo si el cliente lo desea, para estos casos vendemos licencias oficiales de OS y aplicaciones. Realizamos copias de seguridad, recuperación de archivos y actualización de software y controladores.',
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const _Description(
                              title: 'Cambio de Pasta Térmica',
                              text:
                                  'Tanto para los equipos de escritorio como los equipos portátiles realizamos el cambio de pasta térmica. Un proceso que para las maquinas portátiles es vital ya que prolonga la vida útil y mejora el rendimiento. Todo esto lo realizamos con equipo adecuado y utilizamos pasta de calidad. En caso de que lo requiere, ofrecemos el cambio de las almohadillas térmicas en caso de estar derretidas.',
                            ),
                            _Image(
                              size: size,
                              path: path4,
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            _Image(
                              size: size,
                              path: path5,
                              isRadius: const BorderRadius.only(
                                  bottomLeft: Radius.circular(10)),
                            ),
                            const _Description(
                              title: 'Actualización de Hardware',
                              text:
                                  'Para los equipos de escritorio, pero sobre todo para los equipos portátiles ofrecemos nuestra experiencia en la actualización de hardware. Aumento en la capacidad de almacenamiento, mejora en la velocidad de unidades de almacenamiento, aumento en la capacidad de la memoria RAM, remplazo de la unidad lectora de disco laser por una bahía de almacenamiento. Todo esto con la finalidad de emojar las características del equipo.',
                            )
                          ],
                        ),
                      ],
                    )
                  : Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: Text('Mantenimiento de Hardware',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.bold,
                                  fontSize: size.width * 0.04,
                                  color: Colors.white)),
                        ),
                        Row(
                          children: [
                            _Image(size: size, path: path1),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(15),
                                child: Text(
                                    'Ofrecemos un servicio completo con experiencia en computadoras de escritorio. Este servicio abarca desde los apartados más básicos como limpieza profunda y recambio de pasta térmica, hasta el cambio de componentes ya sea por su mal estado o para actualizar el componente. Puedes traer el componente que seas instalar o podemos venderte partes nuevas a medida.',
                                    style: GoogleFonts.lato(
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white,
                                      fontSize: size.width * 0.024,
                                    )),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: Text('Venta de componentes',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.bold,
                                  fontSize: size.width * 0.04,
                                  color: Colors.white)),
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(15),
                                child: Text(
                                    'Vendemos componentes electrónicos, ya sea partes para computadoras o equipos de red como enrutadores, puntos de acceso o cables de red hechos a medida. Nuestra solicitud de mayor demanda son los Discos de Estado Solido para actualizar computadoras portátil, además, ofrecemos el servicio de clonación e instalación del nuevo disco.',
                                    style: GoogleFonts.lato(
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white,
                                      fontSize: size.width * 0.024,
                                    )),
                              ),
                            ),
                            _Image(size: size, path: path2),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: Text('Mantenimiento de Software',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.bold,
                                  fontSize: size.width * 0.04,
                                  color: Colors.white)),
                        ),
                        Row(
                          children: [
                            _Image(size: size, path: path3),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(15),
                                child: Text(
                                    'Tenemos una gran experiencia en el apartado de software ya que es uno de los servicios más demandas. Justo la clonación de discos duros, podemos Instalar el Sistema Operativo completo si el cliente lo desea, para estos casos vendemos licencias oficiales de OS y aplicaciones. Realizamos copias de seguridad, recuperación de archivos y actualización de software y controladores.',
                                    style: GoogleFonts.lato(
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white,
                                      fontSize: size.width * 0.024,
                                    )),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: Text('Cambio de Pasta Térmica',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.bold,
                                  fontSize: size.width * 0.04,
                                  color: Colors.white)),
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(15),
                                child: Text(
                                    'Tanto para los equipos de escritorio como los equipos portátiles realizamos el cambio de pasta térmica. Un proceso que para las maquinas portátiles es vital ya que prolonga la vida útil y mejora el rendimiento. Todo esto lo realizamos con equipo adecuado y utilizamos pasta de calidad. En caso de que lo requiere, ofrecemos el cambio de las almohadillas térmicas en caso de estar derretidas.',
                                    style: GoogleFonts.lato(
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white,
                                      fontSize: size.width * 0.024,
                                    )),
                              ),
                            ),
                            _Image(size: size, path: path4),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: Text('Actualización de Hardware',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.bold,
                                  fontSize: size.width * 0.04,
                                  color: Colors.white)),
                        ),
                        Row(
                          children: [
                            _Image(
                                size: size,
                                path: path5,
                                isRadius: const BorderRadius.only(
                                    bottomLeft: Radius.circular(10))),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(15),
                                child: Text(
                                    'Para los equipos de escritorio, pero sobre todo para los equipos portátiles ofrecemos nuestra experiencia en la actualización de hardware. Aumento en la capacidad de almacenamiento, mejora en la velocidad de unidades de almacenamiento, aumento en la capacidad de la memoria RAM, remplazo de la unidad lectora de disco laser por una bahía de almacenamiento. Todo esto con la finalidad de emojar las características del equipo.',
                                    style: GoogleFonts.lato(
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white,
                                      fontSize: size.width * 0.024,
                                    )),
                              ),
                            ),
                          ],
                        ),
                      ],
                    )),
          const CustomAppFooter()
        ],
      )),
    );
  }
}

class _Description extends StatelessWidget {
  const _Description({
    Key? key,
    required this.title,
    required this.text,
  }) : super(key: key);
  final String title;
  final String text;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(title,
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.bold,
                    fontSize: size.width * 0.04,
                    color: Colors.white)),
            Text(text,
                style: GoogleFonts.lato(
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                  fontSize: size.width * 0.015,
                )),
          ],
        ),
      ),
    );
  }
}

class _Image extends StatelessWidget {
  const _Image({
    Key? key,
    required this.size,
    required this.path,
    this.isRadius,
  }) : super(key: key);

  final Size size;
  final List<String> path;
  final BorderRadius? isRadius;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: size.width * 0.43,
        child: Swiper(
          pagination: const SwiperPagination(),
          duration: 1000,
          autoplayDelay: Random().nextInt(2000) + 2000,
          itemCount: path.length,
          autoplay: true,
          itemBuilder: (context, index) {
            return ClipRRect(
                borderRadius: isRadius ?? BorderRadius.circular(0),
                child: Image.asset(path[index]));
          },
        ),
      ),
    );
  }
}
