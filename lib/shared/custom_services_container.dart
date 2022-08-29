import 'package:app_muritec/shared/services_bottom_card.dart';
import 'package:app_muritec/theme/theme.dart';
import 'package:flutter/material.dart';

class CustomServicesContainer extends StatelessWidget {
  const CustomServicesContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: MainTheme.graySoft,
      padding: MainTheme.mainPadding,
      child: Column(
        children: const [
          ServicesBottomCard(
            title: 'Computación',
            text:
                '•  Realizamos mantenimiento preventivo y correctivo de  equipos informáticos, con especialidad en el área de computadoras portátiles.\n\n• Ofrecemos servicio de actualización de software y hardware donde nosotros otorgamos variedad de cotizaciones buscando ajustarnos a las necesidades del cliente.\n\n•  Venta de licencias oficiales de tipo OEM para Windows y Office.\n\n•  Realizamos limpieza profunda de todos los componentes y cambio de pasta y almohadillas térmicas.\n\n• Clonación de discos duros mediante software  licenciados y seguros.',
            bottom: 20,
            top: 60,
          ),
          ServicesBottomCard(
            title: 'Redes',
            text:
                '•  Disponemos de conocimiento en el área de redes, temas e información estudiando directamente de Cisco, uno de los lideres en el área de redes y comunicaciones a nivel mundial.\n\n• Creación de topologías de red implantando varias de las tecnologías y marcos de trabajo más solicitadas en esta área para el buen desempeño de la red.\n\n•  Cotización, venta e instalación de equipos de red a nivel doméstico como enrutadores, conmutadores, puntos de acceso y repetidores.\n\n•  Fabricación, venta e instalación de cables de red.',
            bottom: 20,
            top: 20,
          ),
          ServicesBottomCard(
            title: 'Programación',
            text:
                '•  Tenemos experiencia con múltiples lenguajes de programación, tanto enfocados en el entorno nativo de escritorio de Windows y entorno web.\n\n• Conocimiento de nivel avanzado en el entorno de bases de datos relacionales, enfocado en el manejo y gestión de bases de datos Microsoft SQL Server.\n\n•  Capacidades de trabajo colaborativo con GitHub y metodologías como Scrum y Design Thinking.\n\n•  Contamos con un equipo altamente creativo muy enfocado en el apartado de frontend con experiencia en Adobe ilustrador y Figma.\n\n• Actualmente nos encontramos incursionando en el área de desarrollo Web y AWP.',
            bottom: 60,
            top: 20,
          )
        ],
      ),
    );
  }
}
