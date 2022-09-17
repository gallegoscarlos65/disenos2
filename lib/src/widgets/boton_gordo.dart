import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BotonGordo extends StatelessWidget {
  //const BotonGordo({Key? key}) : super(key: key);

  final IconData ? icon;
  final String ? texto;
  final Color ? color1;
  final Color ? color2; 
  final Function()? onPress;

  const BotonGordo({
    super.key, 
    this.icon = FontAwesomeIcons.circle, 
    this.texto, 
    this.color1, 
    this.color2,
    required this.onPress, });
  



  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: this.onPress,
      child: Stack(
        children: [
          _BotonGordoBackground(icon: FontAwesomeIcons.motorcycle, color1: this.color1, color2: this.color2),
    
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 140, width: 40,),
              FaIcon(this.icon, color: Colors.white, size: 40,),
              SizedBox(width: 20,),
              Expanded(child: Text('$texto', style: TextStyle(color: Colors.white, fontSize: 18),)),
              FaIcon(this.icon, color: Colors.white,),
              SizedBox(width: 40,)
            ],
          )
        ],
      ),
    );
  }
}

class _BotonGordoBackground extends StatelessWidget {

  final IconData ? icon;
  final Color ? color1;
  final Color ? color2; 

  const _BotonGordoBackground({super.key, this.color1, this.color2, this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(

      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Stack(
          children: <Widget>[
            Positioned(
              right: -20,
              top: -20,
              child: FaIcon(this.icon, size: 150, color: Colors.white.withOpacity(0.2),))
          ],
        ),
      ),

      margin: EdgeInsets.all(20),
      width: double.infinity,
      height: 100,

      decoration: BoxDecoration(
        color: Colors.red,
        //Para las sombras
        boxShadow: <BoxShadow>[
          BoxShadow(color: Colors.black.withOpacity(0.2), offset: Offset(4,6), blurRadius: 10)
        ],
        borderRadius: BorderRadius.circular(15),
        gradient: LinearGradient(colors: <Color>[
          this.color1!,
          this.color2!,
        ])
      ),
    );
  }
}