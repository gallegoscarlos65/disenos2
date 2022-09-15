import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HeaderCuadrado extends StatelessWidget {
  const HeaderCuadrado({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      //Flutter no acepta los numerales con #, por lo tanto se quita el numeral y se antepone 0xff y luego ahora si el numero
      color: Color(0xff615AAB),

    );
  }
}

class HeaderBordesRedondeados extends StatelessWidget {
  //const HeaderCuadrado({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      //Flutter no acepta los numerales con #, por lo tanto se quita el numeral y se antepone 0xff y luego ahora si el numero
      //color: Color(0xff615AAB),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(70), 
        bottomRight: Radius.circular(70)),
        color: Color(0xff615AAB)
      ),
    );
  }
}

// class HeaderDiagonal extends StatelessWidget {
//   //const HeaderCuadrado({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     //Para rotar el contenedor, los contenedores no se pueden extender mas del ancho de la pantalla
//     return Transform.rotate(
//       angle: -0.10,
//       child: Container(
//         height: 300,
//         //Flutter no acepta los numerales con #, por lo tanto se quita el numeral y se antepone 0xff y luego ahora si el numero
//         color: Color(0xff615AAB),
    
//       ),
//     );
//   }
// }

class HeaderDiagonal extends StatelessWidget {
  //const HeaderCuadrado({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Para rotar el contenedor, los contenedores no se pueden extender mas del ancho de la pantalla
    return Container(
      height: double.infinity,
      width: double.infinity,
      //Flutter no acepta los numerales con #, por lo tanto se quita el numeral y se antepone 0xff y luego ahora si el numero
      //color: Color(0xff615AAB),
      child: CustomPaint(
        painter: _HeaderDiagonalPainter(),
      ),
    );
  }
}

class _HeaderDiagonalPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    
    //Es el lapiz que se va a utilizar para pintar y dibujar
    final lapiz = Paint();

    //Propiedades
    lapiz.color = Color(0xff615AAB);
    //Stroke solo los bordes, y fill cuando se quire rellenar
    lapiz.style = PaintingStyle.fill;
    //EL ancho del lapiz
    lapiz.strokeWidth = 2;

    final path = new Path();

    //Dibujar con el path y el lapiz
    //Por defecto el path esta en la posicion 0,0 de x, y
    //El move al parecer solo es para levantar el lapiz y moverse
    path.moveTo(0, size.height * 0.35);
    //EL line to al parecer indica que haga una linea
    path.lineTo(size.width, size.height * 0.30);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);
    path.lineTo(0, size.height*0.5);
    canvas.drawPath(path, lapiz);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
   return true;
  }

}







class HeaderTriangular extends StatelessWidget {
  //const HeaderCuadrado({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Para rotar el contenedor, los contenedores no se pueden extender mas del ancho de la pantalla
    return Container(
      height: double.infinity,
      width: double.infinity,
      //Flutter no acepta los numerales con #, por lo tanto se quita el numeral y se antepone 0xff y luego ahora si el numero
      //color: Color(0xff615AAB),
      child: CustomPaint(
        painter: _HeaderTriangularlPainter(),
      ),
    );
  }
}

class _HeaderTriangularlPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    
    //Es el lapiz que se va a utilizar para pintar y dibujar
    final lapiz = Paint();

    //Propiedades
    lapiz.color = Color(0xff615AAB);
    //Stroke solo los bordes, y fill cuando se quire rellenar
    lapiz.style = PaintingStyle.fill;
    //EL ancho del lapiz
    lapiz.strokeWidth = 2;

    final path = new Path();

    //Dibujar con el path y el lapiz
    //Por defecto el path esta en la posicion 0,0 de x, y
    //El move al parecer solo es para levantar el lapiz y moverse
    // path.moveTo(0, size.height * 0.35);
    //EL line to al parecer indica que haga una linea

    // path.lineTo(size.width, size.height);
    // path.lineTo(size.width, 0);

    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height);


    // path.lineTo(size.width, size.height * 0.30);
    // path.lineTo(size.width, 0);
    // path.lineTo(0, 0);
    // path.lineTo(0, size.height*0.5);
    canvas.drawPath(path, lapiz);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
   return true;
  }

}



class HeaderPico extends StatelessWidget {
  //const HeaderCuadrado({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Para rotar el contenedor, los contenedores no se pueden extender mas del ancho de la pantalla
    return Container(
      height: double.infinity,
      width: double.infinity,
      //Flutter no acepta los numerales con #, por lo tanto se quita el numeral y se antepone 0xff y luego ahora si el numero
      //color: Color(0xff615AAB),
      child: CustomPaint(
        painter: _HeaderPicoPainter(),
      ),
    );
  }
}

class _HeaderPicoPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    
    //Es el lapiz que se va a utilizar para pintar y dibujar
    final lapiz = Paint();

    //Propiedades
    lapiz.color = Color(0xff615AAB);
    //Stroke solo los bordes, y fill cuando se quire rellenar
    lapiz.style = PaintingStyle.fill;
    //EL ancho del lapiz
    lapiz.strokeWidth = 2;

    final path = new Path();

    path.lineTo(0, size.height * .3);
    path.lineTo(size.width * 0.5, size.height * .4);
    path.lineTo(size.width, size.height * .3);
    path.lineTo(size.width, 0);

    canvas.drawPath(path, lapiz);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
   return true;
  }

}





class HeaderCurvo extends StatelessWidget {
  //const HeaderCuadrado({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Para rotar el contenedor, los contenedores no se pueden extender mas del ancho de la pantalla
    return Container(
      height: double.infinity,
      width: double.infinity,
      //Flutter no acepta los numerales con #, por lo tanto se quita el numeral y se antepone 0xff y luego ahora si el numero
      //color: Color(0xff615AAB),
      child: CustomPaint(
        painter: _HeaderCurvoPainter(),
      ),
    );
  }
}

class _HeaderCurvoPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    
    //Es el lapiz que se va a utilizar para pintar y dibujar
    final lapiz = Paint();

    //Propiedades
    lapiz.color = Color(0xff615AAB);
    //Stroke solo los bordes, y fill cuando se quire rellenar
    lapiz.style = PaintingStyle.fill;
    //EL ancho del lapiz
    lapiz.strokeWidth = 20;

    final path = new Path();

    path.lineTo(0, size.height * 0.25);
    path.quadraticBezierTo(size.width * 0.5, size.height * 0.35, size.width, size.height * 0.25);
    //path.lineTo(size.width, size.height * 0.25);
    path.lineTo(size.width, 0);
    canvas.drawPath(path, lapiz);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
   return true;
  }

}


class HeaderWaves extends StatelessWidget {
  //const HeaderCuadrado({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Para rotar el contenedor, los contenedores no se pueden extender mas del ancho de la pantalla
    return Container(
      height: double.infinity,
      width: double.infinity,
      //Flutter no acepta los numerales con #, por lo tanto se quita el numeral y se antepone 0xff y luego ahora si el numero
      //color: Color(0xff615AAB),
      child: CustomPaint(
        painter: _HeaderWavesPainter(),
      ),
    );
  }
}

class _HeaderWavesPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    
    //Es el lapiz que se va a utilizar para pintar y dibujar
    final lapiz = Paint();

    //Propiedades
    lapiz.color = Color(0xff615AAB);
    //Stroke solo los bordes, y fill cuando se quire rellenar
    lapiz.style = PaintingStyle.fill;
    //EL ancho del lapiz
    lapiz.strokeWidth = 20;

    final path = new Path();

    // path.lineTo(0, size.height * 0.25);
    // path.quadraticBezierTo(size.width * 0.5, size.height * 0.35, size.width, size.height * 0.25);
    // //path.lineTo(size.width, size.height * 0.25);
    // path.lineTo(size.width, 0);

    path.lineTo(0, size.height * .3);
    path.quadraticBezierTo(size.width * 0.25, size.height * 0.35, size.width * 0.5, size.height * 0.3);
    path.quadraticBezierTo(size.width * 0.75, size.height * 0.25, size.width, size.height * .3);
    path.lineTo(size.width, 0);


    canvas.drawPath(path, lapiz);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
   return true;
  }

}








class HeaderWavesGradient extends StatelessWidget {
  //const HeaderCuadrado({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Para rotar el contenedor, los contenedores no se pueden extender mas del ancho de la pantalla
    return Container(
      height: double.infinity,
      width: double.infinity,
      //Flutter no acepta los numerales con #, por lo tanto se quita el numeral y se antepone 0xff y luego ahora si el numero
      //color: Color(0xff615AAB),
      child: CustomPaint(
        painter: _HeaderWavesGradientPainter(),
      ),
    );
  }
}

class _HeaderWavesGradientPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    
    final Rect rect = new Rect.fromCircle(
      center: Offset(150, 200), 
      radius: 180);

    final Gradient gradiente = new LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: <Color>[
        Color.fromARGB(255, 241, 41, 6),
        Color.fromARGB(255, 19, 209, 35),
        Color.fromARGB(255, 10, 53, 194),
      ],
      stops: [
        0.0,
        0.5,
        1.0,
      ]
      );

    //Es el lapiz que se va a utilizar para pintar y dibujar
    //El shader viene como base de un gradiente
    final lapiz = Paint()..shader = gradiente.createShader(rect);

    //Propiedades
    lapiz.color = Colors.red;
    //Stroke solo los bordes, y fill cuando se quire rellenar
    lapiz.style = PaintingStyle.fill;
    //EL ancho del lapiz
    lapiz.strokeWidth = 20;

    final path = new Path();

    // path.lineTo(0, size.height * 0.25);
    // path.quadraticBezierTo(size.width * 0.5, size.height * 0.35, size.width, size.height * 0.25);
    // //path.lineTo(size.width, size.height * 0.25);
    // path.lineTo(size.width, 0);

    path.lineTo(0, size.height * .3);
    path.quadraticBezierTo(size.width * 0.25, size.height * 0.35, size.width * 0.5, size.height * 0.3);
    path.quadraticBezierTo(size.width * 0.75, size.height * 0.25, size.width, size.height * .3);
    path.lineTo(size.width, 0);


    canvas.drawPath(path, lapiz);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
   return true;
  }

}

class IconHeader extends StatelessWidget {
  // const IconHeader({Key? key}) : super(key: key);

  

  final IconData icon;
  final String titulo;
  final String subtitulo;
  final Color color1;
  final Color color2;

  const IconHeader({
    super.key, 
    required this.icon, 
    required this.titulo, 
    required this.subtitulo, 
    this.color1  = Colors.grey,
    this.color2 =  Colors.blueGrey
    });

  @override
  Widget build(BuildContext context) {
    
    final Color colorBlanco = Colors.white.withOpacity(0.7);
    
    return Stack(

      children: [
        _IconHeaderBackground(
          color1: this.color1,
          color2: this.color2,
        ),

        Positioned(
          top: -50,
          left: -50,
          child: FaIcon(this.icon, size: 250, color: Colors.white.withOpacity(0.2),),
    ),

    Column(
      //crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(height: 80, width: double.infinity),
        Text(this.subtitulo, style: TextStyle(fontSize: 20, color:colorBlanco),),
        SizedBox(height: 20, ),
        Text(this.titulo, style: TextStyle(fontSize: 25, color:colorBlanco, fontWeight: FontWeight.bold),),
        SizedBox(height: 20,),
        FaIcon(this.icon, size: 80, color: Colors.white,),
      ],
    )
    
    ],

    );
  }
}

class _IconHeaderBackground extends StatelessWidget {

  final Color color1;
  final Color color2;

  const _IconHeaderBackground({
    super.key, 
    required this.color1, 
    required this.color2
    });


  // const _IconHeaderBackground({
  //   Key? key,
  // }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 300,
      // color: Colors.amber,
      decoration: BoxDecoration(
        //color: Colors.amber,
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(80)),
        gradient: LinearGradient(
          colors: <Color> [
            this.color1,
            this.color2,
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter
          )
      ),
    );
  }
}
