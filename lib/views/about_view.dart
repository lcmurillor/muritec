import 'package:app_muritec/providers/menu_provider.dart';
import 'package:app_muritec/shared/sheards.dart';
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
             * Contenedor de la iamgen con efecto paralax
             */
            Positioned(
                top: -0.25 * offset,
                child: Image.asset('assets/img1.jpg',
                    height: widget.height * 0.40,
                    width: widget.width,
                    fit: BoxFit.cover)),
            Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [
                  Color.fromRGBO(34, 102, 164, 0.5),
                  Colors.transparent
                ], stops: [
                  0.1,
                  0.9
                ], begin: Alignment.topLeft, end: Alignment.bottomRight),
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
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 100),
                      height: widget.height * 0.40,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            CustomBannerTitle(widget: widget),
                            CustomBannerButton(widget: widget)
                          ]),
                    )
                  ] else ...[
                    /**
                   * Contenedor que contruye en su totalalidad el banre superior en tamaño reducido
                   */
                    Container(
                      //padding: const EdgeInsets.symmetric(horizontal: 100),
                      height: widget.height * 0.35,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomBannerTitle(widget: widget),
                            const SizedBox(height: 10),
                            CustomBannerButton(widget: widget)
                          ]),
                    )
                  ],

                  /**
                   * Todo el contendio despues de la imagnes
                   */
                  Container(
                    width: widget.width,
                    height: 1000,
                    color: Colors.amber,
                  ),
                  const CustomAppFooter()
                ],
              ),
            )
            //const CustomAppMenu()
          ]),
        ),
      ),
    );
  }

  bool updateOffset(ScrollNotification scrollNotification) {
    setState(() => offset = scrollNotification.metrics.pixels);
    return true;
  }
}
