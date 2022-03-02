// ignore_for_file: file_names
import 'package:app_muritec/shared/sheards.dart';
import 'package:app_muritec/theme/theme.dart';
import 'package:flutter/Material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class CustomAppFooter extends StatelessWidget {
  const CustomAppFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return (constraints.maxWidth > 650)
            ? const _FullSizedFooter()
            : const _MediumSizedFooter();
      },
    );
  }
}

class _FullSizedFooter extends StatelessWidget {
  const _FullSizedFooter({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 140,
      color: MainTheme.mainGray,
      padding: const EdgeInsets.symmetric(horizontal: 100),
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
          const CustomSocialMediaButton(
            icon: MdiIcons.instagram,
            url: 'https://www.instagram.com/lcmurillor/?hl=es',
          ),
          const CustomSocialMediaButton(
            icon: MdiIcons.linkedin,
            url: 'https://www.linkedin.com/in/lcmurillor/',
          ),
          const CustomSocialMediaButton(
            icon: MdiIcons.github,
            url: 'https://github.com/lcmurillor',
          ),
          const CustomSocialMediaButton(
            icon: MdiIcons.facebook,
            url: 'https://www.facebook.com/profile.php?id=100072001248682',
          ),
        ],
      ),
    );
  }
}

class _MediumSizedFooter extends StatelessWidget {
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
          Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Row(children: const [
              CustomSocialMediaButton(
                icon: MdiIcons.instagram,
                url: 'https://www.instagram.com/lcmurillor/?hl=es',
              ),
              CustomSocialMediaButton(
                icon: MdiIcons.linkedin,
                url: 'https://www.linkedin.com/in/lcmurillor/',
              )
            ]),
            Row(children: const [
              CustomSocialMediaButton(
                icon: MdiIcons.github,
                url: 'https://github.com/lcmurillor',
              ),
              CustomSocialMediaButton(
                icon: MdiIcons.facebook,
                url: 'https://www.facebook.com/profile.php?id=100072001248682',
              ),
            ])
          ]),
        ],
      ),
    );
  }
}
