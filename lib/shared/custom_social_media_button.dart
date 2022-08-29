import 'package:flutter/Material.dart';
import 'package:url_launcher/url_launcher_string.dart';

class CustomSocialMediaButton extends StatelessWidget {
  ///Este widget es un botón que muestra un icono el cual se puede enviar por paramentros
  ///además estos botón esperan una URL para redirigir al usario a esa dirección.
  const CustomSocialMediaButton(
      {Key? key,
      required this.icon,
      required this.url,
      required this.marginLeft,
      this.iconSize})
      : super(key: key);
  final IconData icon;
  final String url;
  final double marginLeft;
  final double? iconSize;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: marginLeft),
      child: IconButton(
        onPressed: () => launchUrlString(url),
        icon: Icon(
          icon,
          color: Colors.white,
          size: iconSize ?? 40,
        ),
      ),
    );
  }
}
