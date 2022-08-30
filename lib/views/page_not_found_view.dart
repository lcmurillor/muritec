import 'package:app_muritec/shared/sheards.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PageNotFoundView extends StatelessWidget {
  const PageNotFoundView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Error 404',
                      softWrap: true,
                      maxLines: 4,
                      style: GoogleFonts.poppins(
                          fontSize: 80, fontWeight: FontWeight.bold)),
                  Text('Página no encontrada',
                      softWrap: true,
                      maxLines: 4,
                      style: GoogleFonts.poppins(fontSize: 40)),
                ],
              ),
            ),
            const CustomAppFooter()
          ],
        ),
      ),
    );
  }
}
