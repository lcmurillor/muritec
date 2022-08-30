// ignore_for_file: file_names

import 'package:app_muritec/providers/menu_provider.dart';
import 'package:app_muritec/router/router.dart';
import 'package:app_muritec/services/navigation_service.dart';
import 'package:app_muritec/shared/sheards.dart';
import 'package:app_muritec/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomAppMenu extends StatelessWidget {
  const CustomAppMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MenuProvider menu = Provider.of<MenuProvider>(context);
    return LayoutBuilder(
      builder: (_, constraints) {
        if ((constraints.maxWidth > 910)) {
          return const _FullSizedMenu();
        } else {
          return _MediumSizedMenu(menu: menu);
        }
      },
    );
  }
}

class _FullSizedMenu extends StatelessWidget {
  const _FullSizedMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 140,
      padding: MainTheme.mainPadding,
      decoration: _customBoxDecoration(),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          //Logo de la empresa
          Container(
              padding: const EdgeInsets.only(bottom: 20),
              child: SvgPicture.asset(
                'assets/Isologotipo.svg',
                semanticsLabel: 'MuriTEC logo',
                fit: BoxFit.cover,
                height: 100,
              )),
          const Spacer(),
          //Botones dle menu
          Container(
            padding: const EdgeInsets.only(bottom: 40),
            child: Row(
              children: [
                CustomMenuButton(
                  text: 'Acerca de nosotros',
                  onPressed: () =>
                      NavigationService.replaceTo(Flurorouter.rootRoute),
                  marginLeft: 40,
                  delay: 40,
                ),
                CustomMenuButton(
                  text: 'Experiencia',
                  onPressed: () =>
                      NavigationService.replaceTo(Flurorouter.experienceRoute),
                  marginLeft: 40,
                  delay: 80,
                ),
                CustomMenuButton(
                  text: 'Contáctanos',
                  onPressed: () =>
                      NavigationService.replaceTo(Flurorouter.contactusRoute),
                  marginLeft: 40,
                  delay: 120,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _MediumSizedMenu extends StatefulWidget {
  const _MediumSizedMenu({Key? key, required this.menu}) : super(key: key);
  final MenuProvider menu;

  @override
  State<_MediumSizedMenu> createState() => _MediumSizedMenuState();
}

class _MediumSizedMenuState extends State<_MediumSizedMenu> {
  late AnimationController controller;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: widget.menu.getmenuSize(),
      padding: const EdgeInsets.only(left: 40, right: 40, top: 16),
      decoration: _customBoxDecoration(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _MenuTitle(menu: widget.menu),
          if (widget.menu.getmenuSize() > 80) ...[
            const SizedBox(height: 15),
            CustomMenuButton(
              text: 'Acerca de nosotros',
              onPressed: () {
                NavigationService.replaceTo(Flurorouter.rootRoute);
                widget.menu.setMediumSize();
              },
              marginLeft: 0,
              marginVertical: 2,
              delay: 40,
            ),
            CustomMenuButton(
              text: 'Experiencia',
              onPressed: () {
                NavigationService.replaceTo(Flurorouter.experienceRoute);
                widget.menu.setMediumSize();
              },
              marginLeft: 0,
              marginVertical: 2,
              delay: 80,
            ),
            CustomMenuButton(
              text: 'Contáctanos',
              onPressed: () {
                NavigationService.replaceTo(Flurorouter.contactusRoute);
                widget.menu.setMediumSize();
              },
              marginLeft: 0,
              marginVertical: 2,
              delay: 120,
            ),
          ],
        ],
      ),
    );
  }
}

class _MenuTitle extends StatelessWidget {
  const _MenuTitle({
    Key? key,
    required this.menu,
  }) : super(key: key);
  final MenuProvider menu;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //Logo de la empresa
        SvgPicture.asset(
          'assets/Isologotipo.svg',
          semanticsLabel: 'MuriTEC logo',
          fit: BoxFit.cover,
          height: 50,
        ),
        const Spacer(),
        //Botones dle menu
        IconButton(
            onPressed: () => (menu.getmenuSize() == 80)
                ? {menu.setDisplayMenuSize()}
                : {menu.setMediumSize()},
            icon: Icon(
              Icons.menu,
              size: 40,
              color: MainTheme.mainGray,
            )),
      ],
    );
  }
}

BoxDecoration _customBoxDecoration() {
  return const BoxDecoration(
    color: Colors.white,
    // boxShadow: [
    //   BoxShadow(
    //       color: MainTheme.shadowBlue, offset: const Offset(0, 8), blurRadius: 34)]
  );
}
