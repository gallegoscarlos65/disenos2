import 'package:flutter/material.dart';
import 'dart:math' as Math;

class AnimacionesPage extends StatelessWidget {
  //const AnimacionesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CuadradoAnimado(),
      ),
    );
  }
}

class CuadradoAnimado extends StatefulWidget {
  // const CuadradoAnimado({
  //   Key? key,
  // }) : super(key: key);

  @override
  State<CuadradoAnimado> createState() => _CuadradoAnimadoState();
}
//Este with es suficiente para hacer varias animaciones
class _CuadradoAnimadoState extends State<CuadradoAnimado> with SingleTickerProviderStateMixin{

  //Es un control para manejar la animacion
   late AnimationController controller;
   late Animation<double> rotacion;
   late Animation<double> opacidad;
   late Animation<double> moverDerecha;
   late Animation<double> agrandar;

  @override
  void initState() {
    //vsync(Vertical sync, es para que este cuadrado cada cuadro con la resolucion de la pantalla )
    controller = new AnimationController(vsync: this, duration: Duration(milliseconds: 4000));
    //Twen recibe parametros de tipo double y se le debe de establecer quien es el que lo controla o el que lo anima
    //Math.pi para que haga el circulo completo
    //rotacion = Tween(begin: 0.0, end: 2.0 * Math.pi).animate(controller);

    rotacion = Tween(begin: 0.0, end: 2.0 * Math.pi).animate(
      CurvedAnimation(parent: controller, curve: Curves.easeOut)
    );

    opacidad = Tween(begin: 0.1, end: 1.0).animate(
      //Interval(begin, end y el tipo de curvatura, aunque este es opcional)
      CurvedAnimation(parent: controller, curve: Interval(0, 0.25, curve: Curves.easeOut))
    );

    moverDerecha = Tween(begin: 0.0, end: 200.0).animate(
      CurvedAnimation(parent: controller, curve: Curves.easeOut)
    );

    agrandar = Tween(begin: 0.0, end: 2.0).animate(
      CurvedAnimation(parent: controller, curve: Curves.easeOut)
    );



    controller.addListener(() { 

      //Cada vez que la animacion cambia se va a disparar el listener
      print('Status: ${controller.status}');
      //Si el estatus de la animacion ha sido completado
      //hara la animacion inversa
      if(controller.status == AnimationStatus.completed){
        controller.reverse();
      }
      // else if(controller.status == AnimationStatus.dismissed){
      //   controller.forward();
      // }

    });
    
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    //Play /Reproduccion
    controller.forward();
    //Para que se siga reproduciendo
    //controller.repeat();

    //return _Rectangulo();
      return AnimatedBuilder(
        animation: controller,
        child: _Rectangulo(),
        builder: (BuildContext context, Widget ? childRectangulo) {

          print(rotacion.value);
          //Para rotar el cuadrado
          return Transform.translate(
            //Es como el canvas, pero es relativo conforme a la posicion en la que se encuentra
            offset: Offset(moverDerecha.value, 0),
            child: Transform.rotate(
              angle: rotacion.value,
              // child: _Rectangulo());
              child: Opacity(
                opacity: opacidad.value,
                child: Transform.scale(
                  scale: agrandar.value,
                  child: childRectangulo),
              )
            ),
          );
        },
      );
  }
}




class _Rectangulo extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
    return Container(
       width: 70,
       height: 70,
       decoration: BoxDecoration(
         color: Colors.blue
       ),
     ); 
   }
}