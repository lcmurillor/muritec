import 'package:app_muritec/shared/sheards.dart';
import 'package:app_muritec/theme/theme.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/Material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class CustomAppFooter extends StatelessWidget {
  ///Es la barra inferiro de la página la cual contiene la información de contaco
  ///y enlaces a redes sociales del creador de la página.
  const CustomAppFooter({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        ///Esta condición permite definir se se deve construir la barra de tamaño completo
        ///horizontal o la versión ajustada para pantallas con mayor tañano vertical.
        return (constraints.maxWidth > 700)
            ? const _FullSizedFooter()
            : const _MediumSizedFooter();
      },
    );
  }
}

class _FullSizedFooter extends StatelessWidget {
  ///Construye el widget ajustado para dimenciones mayormente horizontales.
  const _FullSizedFooter({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 140,
      color: MainTheme.mainGray,
      padding: MainTheme.mainPadding,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          //Logo de la empresa
          SvgPicture.asset(
            'assets/IsologotipoBlanco.svg',
            semanticsLabel: 'MuriTEC logo',
            fit: BoxFit.cover,
            height: 100,
          ),
          const Spacer(),
          //Botones dle menu
          CustomSocialMediaButton(
            icon: MdiIcons.instagram,
            url: 'https://www.instagram.com/lcmurillor/',
            marginLeft: 40,
          ),
          CustomSocialMediaButton(
            icon: MdiIcons.linkedin,
            url: 'https://www.linkedin.com/in/lcmurillor/',
            marginLeft: 40,
          ),
           CustomSocialMediaButton(
            icon: MdiIcons.github,
            url: 'https://github.com/lcmurillor',
            marginLeft: 40,
          ),
           CustomSocialMediaButton(
            icon: MdiIcons.facebook,
            url: 'https://www.facebook.com/lcmurillor',
            marginLeft: 40,
          ),
        ],
      ),
    );
  }
}

class _MediumSizedFooter extends StatelessWidget {
  ///Construye la barra inferir ajustada para dimenciones mayormente vertiales.
  const _MediumSizedFooter({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 140,
      color: MainTheme.mainGray,
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SvgPicture.asset(
            'assets/IsologotipoBlanco.svg',
            semanticsLabel: 'MuriTEC logo',
            fit: BoxFit.cover,
            height: 80,
          ),
          Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Row(children:  [
              CustomSocialMediaButton(
                icon: MdiIcons.instagram,
                url: 'https://www.instagram.com/lcmurillor/?hl=es',
                marginLeft: 0,
                iconSize: 25,
              ),
              CustomSocialMediaButton(
                icon: MdiIcons.linkedin,
                url: 'https://www.linkedin.com/in/lcmurillor/',
                marginLeft: 10,
                iconSize: 25,
              )
            ]),
            Row(children:  [
              CustomSocialMediaButton(
                icon: MdiIcons.github,
                url: 'https://github.com/lcmurillor',
                marginLeft: 0,
                iconSize: 25,
              ),
              CustomSocialMediaButton(
                icon: MdiIcons.facebook,
                url: 'https://www.facebook.com/profile.php?id=100072001248682',
                marginLeft: 10,
                iconSize: 25,
              ),
            ])
          ]),
        ],
      ),
    );
  }
}
