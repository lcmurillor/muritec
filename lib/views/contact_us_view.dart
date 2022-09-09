import 'dart:convert';

import 'package:app_muritec/providers/email_provider.dart';
import 'package:app_muritec/providers/menu_provider.dart';
import 'package:app_muritec/services/notifications_service.dart';
import 'package:app_muritec/shared/sheards.dart';
import 'package:app_muritec/theme/theme.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;

class ContactUsView extends StatefulWidget {
  const ContactUsView({Key? key}) : super(key: key);

  @override
  State<ContactUsView> createState() => _ContactUsViewState();
}

class _ContactUsViewState extends State<ContactUsView> {
  double offset = 0;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    MenuProvider menu = Provider.of<MenuProvider>(context);
    return NotificationListener(
      onNotification: updateOffsett,
      child: SizedBox(
        width: width,
        height: (width > 910) ? height - 140 : height - menu.getmenuSize(),
        child: Stack(
          children: [
            ///Define la posición de la imagen princial con el efecto paralax.
            Positioned(
                top: offset * -0.25,
                child: Image.asset('assets/img4.png',
                    height: height * 0.50, width: width, fit: BoxFit.cover)),

            ///Este contenedor es el espacio que se encuentra sobre la imagen
            ///que esta posisionada atras, además da el efecto de transparencia con
            //un degradado azul para que sea mas fácil leer el texto.
            Positioned(
              top: offset * -0.25,
              child: Container(
                height: height * 0.50,
                width: width,
                decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    MainTheme.darkBlue.withOpacity(0.5),
                    Colors.transparent
                  ], stops: const [
                    0.5,
                    0.9
                  ], begin: Alignment.topLeft, end: Alignment.bottomRight),
                ),
              ),
            ),
            SingleChildScrollView(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 100),
                  child: Column(
                    children: [
                      Text('Contáctanos',
                          softWrap: true,
                          maxLines: 4,
                          style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: (width > 740) ? 70 : 50)),
                      Text(
                          'Haznos tu consulta o solicita un servicio por este medio.\n Intentaremos responderte a la mayor brevedad posible.',
                          textAlign: TextAlign.center,
                          softWrap: true,
                          maxLines: 4,
                          style: GoogleFonts.lato(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: (width > 740) ? 20 : 15)),
                    ],
                  ),
                ),
                Container(
                  color: Colors.white,
                  width: double.infinity,
                  height: 500,
                  padding: const EdgeInsets.symmetric(vertical: 50),
                  child: Padding(
                    padding: (width > 650)
                        ? MainTheme.mainPadding
                        : const EdgeInsets.symmetric(horizontal: 40),
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 50),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                                color: MainTheme.shadowBlue,
                                offset: const Offset(0, 8),
                                blurRadius: 34)
                          ]),
                      child: const _EmailForm(),
                    ),
                  ),
                ),
                const CustomAppFooter()
              ],
            ))
          ],
        ),
      ),
    );
  }

  bool updateOffsett(ScrollNotification scrollNotification) {
    if (scrollNotification.metrics.axis == Axis.vertical) {
      setState(() => offset = scrollNotification.metrics.pixels);
      return true;
    }
    return false;
  }
}

class _EmailForm extends StatelessWidget {
  const _EmailForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final emailFormProvider = Provider.of<EmailFormProvider>(context);
    return Form(
      key: emailFormProvider.formKey,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Dirección de correo electronico',
                softWrap: true,
                maxLines: 4,
                style: GoogleFonts.lato(
                    fontWeight: FontWeight.w600,
                    fontSize: (width > 740) ? 20 : 15)),
            TextFormField(
              decoration: const InputDecoration(
                  hintText: 'Indique su dirección de correo electronico',
                  border: OutlineInputBorder()),
              onChanged: (value) => emailFormProvider.email = value,
              keyboardType: TextInputType.emailAddress,
              validator: (value) {
                if (!EmailValidator.validate(value ?? '')) {
                  return 'El correo no es válido.';
                } else {
                  value = null;
                  return null;
                }
              },
            ),
            const SizedBox(height: 20),
            Text('Mensaje',
                softWrap: true,
                maxLines: 4,
                style: GoogleFonts.lato(
                    fontWeight: FontWeight.w600,
                    fontSize: (width > 740) ? 20 : 15)),
            TextFormField(
              decoration: const InputDecoration(
                  hintText: '¿En qué le podemos ayudar?',
                  border: OutlineInputBorder()),
              onChanged: (value) => emailFormProvider.text = value,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Por favor, indique cual es su consulta.';
                } else {
                  value = null;
                  return null;
                }
              },
              maxLines: 5,
            ),
            Center(
              child: TextButton(
                onPressed: () {
                  if (emailFormProvider.validateForm()) {
                    sendEmail(
                        email: emailFormProvider.email,
                        text: emailFormProvider.text);
                  }
                },
                style: ButtonStyle(
                  overlayColor:
                      MaterialStateProperty.all<Color>(Colors.transparent),
                ),
                child: Container(
                  margin: const EdgeInsets.symmetric(vertical: 20),
                  height: 50,
                  width: 200,
                  /**
               * Efecto de degradado del contenedor
               */
                  decoration: MainTheme.buttonDecoration,
                  alignment: Alignment.center,
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  /**
               * Ajuste del tecxto la tamaño del contenedor
               */
                  child: FittedBox(
                    fit: BoxFit.contain,
                    child: Text('Enviar',
                        softWrap: true,
                        style: GoogleFonts.poppins(
                            color: Colors.white, fontSize: 22)),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

Future sendEmail({
  required String email,
  required String text,
}) async {
  final url = Uri.parse('https://api.emailjs.com/api/v1.0/email/send');
  await http
      .post(url,
          headers: {'Content-type': 'application/json'},
          body: json.encode({
            'service_id': 'service_2n1s485',
            'template_id': 'template_myys59r',
            'user_id': 'p3ZyjYXQdjOdtMHej',
            'template_params': {'message': text, 'email': email}
          }))
      .then((value) => NotificationsService.showSnackbar(
          'Su mensaje ha sido enviado exitosamente. Intentaremos responderle en la mayor brevedad posible. Muchas gracias.'));
}
