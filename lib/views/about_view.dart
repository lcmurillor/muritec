import 'package:app_muritec/providers/menu_provider.dart';
import 'package:app_muritec/providers/scroll_provider.dart';
import 'package:app_muritec/shared/sheards.dart';
import 'package:app_muritec/theme/theme.dart';
import 'package:flutter/Material.dart';

class AboutView extends StatefulWidget {
  const AboutView({Key? key}) : super(key: key);

  @override
  State<AboutView> createState() => _AboutViewState();
}

class _AboutViewState extends State<AboutView> {
  double offset = 0;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    MenuProvider menu = Provider.of<MenuProvider>(context);
    ScrollProvider controller =
        Provider.of<ScrollProvider>(context, listen: false);
    return NotificationListener(
      onNotification: updateOffsett,
      child: SizedBox(
        width: width,
        height: (width > 910) ? height - 140 : height - menu.getmenuSize(),
        child: Stack(children: [
          ///Define la posición de la imagen princial con el efecto paralax.
          Positioned(
              top: offset * -0.25,
              child: Image.asset('assets/img1.jpg',
                  height: height * 0.40, width: width, fit: BoxFit.cover)),

          ///Este contenedor es el espacio que se encuentra sobre la imagen
          ///que esta posisionada atras, además da el efecto de transparencia con
          //un degradado azul para que sea mas fácil leer el texto.
          Positioned(
            top: offset * -0.25,
            child: Container(
              height: height * 0.40,
              width: width,
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  MainTheme.darkBlue.withOpacity(0.5),
                  Colors.transparent
                ], stops: const [
                  0.1,
                  0.9
                ], begin: Alignment.topLeft, end: Alignment.bottomRight),
              ),
            ),
          ),

          ///Define la posición de la segunda imagen con el efecto paralax.
          Positioned(
              top: (width > 650)
                  ? (offset * -0.85) + 1300
                  : (offset * -0.85) + 1000,
              child: Image.asset('assets/img2.jpg',
                  height: height, width: width, fit: BoxFit.cover)),

          ///Contiene todos los elementos dentro del apartado "acerca de nosotros".
          ///La página procipal, y permite realizar un novimiento vertical "scroll"
          ///para ver todo el contenido.
          ///Contiene una condición que indica con que widget va a construir el banner
          ///según la dimención de la pantalla.
          SingleChildScrollView(
            controller: controller.controller,
            child: Column(
              children: [
                ///Construcción del banner a tamaño completo horizontal.
                if (width > 740) ...[
                  const _FullSizedBanner()

                  ///Construcción del banner a tamaño vertial y para moviles.
                ] else ...[
                  const _MediumSizedBanner()
                ],

                ///Todo el resto del contenido vá acá.
                const CustomServicesScrollCard(),
                const CustomInfoContainer(),
                Container(
                  height: 300,
                ),
                const CustomServicesContainer(),

                const CustomAppFooter()
              ],
            ),
          )
        ]),
      ),
    );
  }

  ///Es llamado cada vez que se realiza un cambio en los valores de posicionamiento
  ///del sroll "offset" asigna un nuevo valor a la variable local offSet si el movimiento
  ///de scroll es vertical unicamente.
  bool updateOffsett(ScrollNotification scrollNotification) {
    if (scrollNotification.metrics.axis == Axis.vertical) {
      setState(() => offset = scrollNotification.metrics.pixels);
      return true;
    }
    return false;
  }
}

class _MediumSizedBanner extends StatelessWidget {
  ///Este widget construye el banner superior en las dimenciones reducidadd, donde
  ///la dimención horizontal es menor o igual a la dimneción vertial.
  const _MediumSizedBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return SizedBox(
      height: height * 0.35,
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        ///Llamado al titulo y sub tíutlo del banner principal.
        CustomBannerTitle(
            width: width, widthTextValue: 0.7, widthTitleValue: 0.10),
        const SizedBox(height: 10),

        ///LLamado al botón lateral que redirije a la pagina de contáctanos.
        const CustomBannerButton(
          height: 0.10,
          width: 0.50,
        )
      ]),
    );
  }
}

class _FullSizedBanner extends StatelessWidget {
  ///Este widget construye y asigna los valores requeridos para posicionar los
  ///elementos de banner principal cuando la página está en formato horizontal.
  ///Hace un llamado a los widgets personalizados que corresponden la título y el botón.
  const _FullSizedBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 100),
      height: height * 0.40,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        ///Llamado al titulo y sub tíutlo del banner principal.
        CustomBannerTitle(
            width: width, widthTextValue: 0.6, widthTitleValue: 0.05),

        ///LLamado al botón lateral que redirije a la pagina de contáctanos.
        const CustomBannerButton(
          height: 0.10,
          width: 0.20,
        )
      ]),
    );
  }
}
