import 'package:animate_do/animate_do.dart';
import 'package:disenos2/src/widgets/boton_gordo.dart';
import 'package:disenos2/src/widgets/headers.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ItemBoton {

  final IconData icon;
  final String texto;
  final Color color1;
  final Color color2;

  ItemBoton( this.icon, this.texto, this.color1, this.color2 );
}

class EmergencyPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

final items = <ItemBoton>[
  new ItemBoton( FontAwesomeIcons.carCrash, 'Motor Accident', Color(0xff6989F5), Color(0xff906EF5) ),
  new ItemBoton( FontAwesomeIcons.plus, 'Medical Emergency', Color(0xff66A9F2), Color(0xff536CF6) ),
  new ItemBoton( FontAwesomeIcons.theaterMasks, 'Theft / Harrasement', Color(0xffF2D572), Color(0xffE06AA3) ),
  new ItemBoton( FontAwesomeIcons.biking, 'Awards', Color(0xff317183), Color(0xff46997D) ),
  new ItemBoton( FontAwesomeIcons.carCrash, 'Motor Accident', Color(0xff6989F5), Color(0xff906EF5) ),
  new ItemBoton( FontAwesomeIcons.plus, 'Medical Emergency', Color(0xff66A9F2), Color(0xff536CF6) ),
  new ItemBoton( FontAwesomeIcons.theaterMasks, 'Theft / Harrasement', Color(0xffF2D572), Color(0xffE06AA3) ),
  new ItemBoton( FontAwesomeIcons.biking, 'Awards', Color(0xff317183), Color(0xff46997D) ),
  new ItemBoton( FontAwesomeIcons.carCrash, 'Motor Accident', Color(0xff6989F5), Color(0xff906EF5) ),
  new ItemBoton( FontAwesomeIcons.plus, 'Medical Emergency', Color(0xff66A9F2), Color(0xff536CF6) ),
  new ItemBoton( FontAwesomeIcons.theaterMasks, 'Theft / Harrasement', Color(0xffF2D572), Color(0xffE06AA3) ),
  new ItemBoton( FontAwesomeIcons.biking, 'Awards', Color(0xff317183), Color(0xff46997D) ),
];

  List<Widget> itemMap = items.map(
    (item) => FadeInLeft(
      duration: Duration(milliseconds: 250),
      child: BotonGordo(
        icon: item.icon,
        texto: item.texto,
        color1: item.color1,
        color2: item.color2,
        onPress: (){print('hola');},),
    )
  ).toList();



    return Scaffold(
      
      body: Stack(
        children: 
          [Container(
            margin: EdgeInsets.only(top: 200),
            child: ListView(
              //Para que funcione como en IOS y de un aspecto de rebote en una lista y no el medio circulo que muestra en Android
              physics: BouncingScrollPhysics(),
              children: <Widget>[
                SizedBox(height: 80,),
                //Operador spread
                ...itemMap

      
              ],
            ),
          ),
          _Encabezado(),
            
        ],
      ),
      
      //body: BotonGordoTemp(),
      );
  }
}

class _Encabezado extends StatelessWidget {
  const _Encabezado({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children:<Widget> 
      [IconHeader(
          icon: FontAwesomeIcons.toolbox, 
          titulo: 'Servicios', 
          subtitulo: 'Haz solicitado',
          color1: Color(0xff536CF6),
          color2: Color(0xff66A9F2),
      ),

      Positioned(
        top: 40,
        right: 0,
        child: RawMaterialButton(
          onPressed: () {},
          shape: CircleBorder(),
          child: FaIcon(FontAwesomeIcons.ellipsisVertical, color: Colors.white,)))
    ],
    );
  }
}

class BotonGordoTemp extends StatelessWidget {
  const BotonGordoTemp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BotonGordo(
      icon: FontAwesomeIcons.motorcycle, 
      texto: 'Accidente de motor', 
      color1: Color(0xff526BF6), 
      color2: Color(0xff67ACF2), 
      onPress: (){
        print('Click!');
      },);
  }
}

class PageHeader extends StatelessWidget {
  const PageHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconHeader(
      titulo: 'Servicios',
      subtitulo: 'Haz solicitado',
      icon: FontAwesomeIcons.tools,
      color1: Color(0xff526BF6),
      color2: Color(0xff67ACF2),
    );
  }
}