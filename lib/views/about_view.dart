import 'package:app_muritec/providers/menu_provider.dart';
import 'package:app_muritec/shared/sheards.dart';
import 'package:app_muritec/theme/theme.dart';
import 'package:flutter/Material.dart';

class AboutView extends StatefulWidget {
  const AboutView({
    Key? key,
    required this.width,
    required this.height,
    required this.menu,
  }) : super(key: key);

  final double width;
  final double height;
  final MenuProvider menu;

  @override
  State<AboutView> createState() => _AboutViewState();
}

double offset = 0;

class _AboutViewState extends State<AboutView> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: NotificationListener<ScrollNotification>(
        onNotification: updateOffset,
        /**
         * Mantiene contenido el stack y genera un formato para que este 
         * no se desborde, es reactivo asi que se ajusta segun el tamaño 
         * de la pantalla
         */
        child: SizedBox(
          width: widget.width,
          height: (widget.width > 910)
              ? widget.height - 140
              : widget.height - widget.menu.getmenuSize(),
          child: Stack(children: [
            /**
             * Define la posicion de la imagen con el efecto paralax
             */
            Positioned(
                top: -0.25 * offset,
                child: Image.asset('assets/img1.jpg',
                    height: widget.height * 0.40,
                    width: widget.width,
                    fit: BoxFit.cover)),
            /**
             * Este contnedor es el espacio que se encuentra sobre la imagen
             * que esta posisionada atras, ademas da el efecto de transparencia
             */
            Positioned(
              top: -0.25 * offset,
              child: Container(
                height: widget.height * 0.40,
                width: widget.width,
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
            /**
             * Contenedor donde se gestiona el resto del contendio
             * que se puede ver de la pagina y que sobre pasa la imagen
             */
            SingleChildScrollView(
              child: Column(
                children: [
                  if (widget.width > 740) ...[
                    /**
                   * Contenedor que contruye en su totalalidad el banner superior en tamaño completo
                   */
                    _FullSizedBanner(widget: widget)
                  ] else ...[
                    /**
                   * Contenedor que contruye en su totalalidad el banne superior en tamaño reducido
                   */
                    _MediumSizedBanner(widget: widget)
                  ],
                  /**
                   * Todo el contendio despues de la imagnes
                   */
                  CustomServicesScrollCard(widget: widget),
                  const CustomAppFooter()
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }

  bool updateOffset(ScrollNotification scrollNotification) {
    setState(() {
      if (scrollNotification.metrics.axisDirection == AxisDirection.down) {
        offset = scrollNotification.metrics.pixels;
      }
    });
    return true;
  }
}

class _MediumSizedBanner extends StatelessWidget {
  const _MediumSizedBanner({
    Key? key,
    required this.widget,
  }) : super(key: key);

  final AboutView widget;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      //padding: const EdgeInsets.symmetric(horizontal: 100),
      height: widget.height * 0.35,
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        CustomBannerTitle(
            width: widget.width, widthTextValue: 0.7, widthTitleValue: 0.10),
        const SizedBox(height: 10),
        CustomBannerButton(
          widget: widget,
          height: 0.10,
          width: 0.50,
        )
      ]),
    );
  }
}

class _FullSizedBanner extends StatelessWidget {
  const _FullSizedBanner({
    Key? key,
    required this.widget,
  }) : super(key: key);

  final AboutView widget;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 100),
      height: widget.height * 0.40,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        CustomBannerTitle(
            width: widget.width, widthTextValue: 0.6, widthTitleValue: 0.05),
        CustomBannerButton(
          widget: widget,
          height: 0.10,
          width: 0.20,
        )
      ]),
    );
  }
}
