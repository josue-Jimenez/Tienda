import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return Container(
     height: 100.0,
     child: ListView(
       scrollDirection: Axis.horizontal,
       children: <Widget>[
        Container(
       
          child: Departamentos(
           imageLocation: 'images/game-boy.png', 
           imageCaption: 'Videojuegos', 
          
          ),
        ),
         Departamentos(
         imageLocation: 'images/energia-renovable.png', 
         imageCaption: 'Eléctrónicos', 
        
        ),
        Departamentos(
         imageLocation: 'images/libros.png', 
         imageCaption: 'Libros', 
        
        ),
         Departamentos(
         imageLocation: 'images/ordenador-portatil.png', 
         imageCaption: 'Computadoras', 
        
        ),
         Departamentos(
         imageLocation: 'images/video.png', 
         imageCaption: 'Películas y TV', 
        
        ),
        
       

       ],
     ),
    );
  }
}

class Departamentos extends StatelessWidget {
  final String imageLocation;
  final String imageCaption;

  const Departamentos({this.imageLocation, this.imageCaption});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
     child: InkWell(onTap: (){},
     child: Container(
       width: 125,
       height: 100.0,

      
       
       child: ListTile(
         title: CircleAvatar(child:Container(child: Image.asset(imageLocation),padding: EdgeInsets.all(12.0)),radius: 33.0, backgroundColor: Color.fromRGBO(255, 5, 5, 3),),
         subtitle: Container(
          
           alignment: Alignment.topCenter,
           child: Text(imageCaption, style: TextStyle( fontSize: 14.0, color: Colors.black),),),
       ),     ),),
    );
  }
}