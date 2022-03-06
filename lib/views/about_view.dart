import 'package:app_muritec/providers/menu_provider.dart';
import 'package:app_muritec/shared/custom_app_footer.dart';
import 'package:flutter/Material.dart';
import 'package:google_fonts/google_fonts.dart';

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
                  /**
                   * Contendio que se encuenta sopre la imagen
                   */
                  SizedBox(
                    //padding: const EdgeInsets.symmetric(horizontal: 100),
                    height: widget.height * 0.70,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          _FullSizeText(widget: widget),
                          TextButton(
                            //style: ButtonStyle(side: 50.0,23.0),
                            onPressed: () {},
                            child: const Text('Contátanos'),
                          ),
                        ]),
                  ),
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

class _FullSizeText extends StatelessWidget {
  const _FullSizeText({Key? key, required this.widget}) : super(key: key);

  final AboutView widget;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          child: Text('MuriTEC',
              style: GoogleFonts.audiowide(
                  color: Colors.white, fontSize: widget.width * 0.05)),
        ),
        FittedBox(
          fit: BoxFit.cover,
          child: SizedBox(
            width: (widget.width * 0.5) - 200,
            child: Text(
                'Somos un equipo multidisciplinario enfocado en las distintas áreas de las Tecnologías de la información.',
                softWrap: true,
                maxLines: 4,
                style: GoogleFonts.poppins(color: Colors.white, fontSize: 20)),
          ),
        )
      ],
    );
  }
}
