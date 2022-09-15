import 'package:disenos2/src/widgets/headers.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class EmergencyPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IconHeader(
        titulo: 'Asistencia Medica',
        subtitulo: 'Haz solicitado',
        icon: FontAwesomeIcons.plusCircle,
        color1: Color(0xff526BF6),
        color2: Color(0xff67ACF2),
      )
   );
  }
}