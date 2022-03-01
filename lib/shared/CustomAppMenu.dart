// ignore_for_file: file_names

import 'package:app_muritec/shared/sheards.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomAppMenu extends StatelessWidget {
  const CustomAppMenu({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (_, BoxConstraints constraints) {
        return (constraints.maxWidth > 945)
            ? const _FullSizedMenu()
            : const _MediumSizedMenu();
      },
    );
  }
}

class _FullSizedMenu extends StatelessWidget {
  const _FullSizedMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 160,
      color: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 100),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          //Logo de la empresa
          Container(
            padding: const EdgeInsets.only(bottom: 20),
            child: SvgPicture.asset(
              'Isologotipo.svg',
              semanticsLabel: 'MuriTEC Logo',
              fit: BoxFit.cover,
              height: 100,
            ),
          ),
          const Spacer(),
          //Botones dle menu
          Container(
            padding: const EdgeInsets.only(bottom: 40),
            child: Row(
              children: [
                CustomMenuButton(text: 'Acerca de nosotros', onPressed: () {}),
                CustomMenuButton(text: 'Experiencia', onPressed: () {}),
                CustomMenuButton(text: 'contáctanos', onPressed: () {}),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _MediumSizedMenu extends StatelessWidget {
  const _MediumSizedMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
