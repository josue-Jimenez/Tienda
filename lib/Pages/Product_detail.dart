import 'package:flutter/material.dart';

class ProductDetails extends StatefulWidget {

  final product_details_name;
   final product_details_new_price;
    final product_details_old_price;
     final product_details_picture;


 ProductDetails({
   this.product_details_name, 
 this.product_details_new_price,
 this.product_details_old_price,
 this.product_details_picture});



  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(

        elevation: 0.0,
        centerTitle: true,
        backgroundColor: Color.fromRGBO(255, 5, 5, 6),
        title: Container(
            padding: EdgeInsets.only(bottom: 6.0),
            child: Image(
                image: AssetImage('images/logoenletras.PNG'), width: 250.00)),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.shopping_cart,
              color: Colors.white,
            ),
            onPressed: () {},
          )
        ],
      ),

   body: ListView(
   children: <Widget>[
    Container(
       height: 300.0,
       child: GridTile(
     
   child: Container(
color: Colors.white,
   child: Image.asset(widget.product_details_picture),



   ),
   footer: Container(
     color: Colors.white70,
     child: ListTile(
     leading:Text(widget.product_details_name, 
     style: TextStyle(fontWeight:FontWeight.bold, fontSize: 16.0),),
     
     title: Row(
     children: <Widget>[
       Expanded(
       child:Text("\$${widget.product_details_old_price}",
       style: TextStyle(color: Colors.grey,decoration: TextDecoration.lineThrough)
       
       ),
       

       ),
       Expanded(
       child:Text("\$${widget.product_details_new_price}",
       style: TextStyle(fontWeight: FontWeight.bold,color: Colors.red),
       
       ),

       )
     ],

     ),


     ),
   ),

       ),


    ),

//=====================botom================
Row(
  children: <Widget>[

    Expanded(

     child: MaterialButton(onPressed: (){},
     
     color: Colors.white,
     textColor: Colors.grey,
     elevation: 0.2,
     child: Row(

       children: <Widget>[

       Expanded(
         child: Text("Size"),
       ),

         Expanded(

          child: Icon(Icons.arrow_drop_down),

         ),
       ],
     ),
     
     )


    ),





 Expanded(

     child: MaterialButton(onPressed: (){},
     
     color: Colors.white,
     textColor: Colors.grey,
     elevation: 0.2,
     child: Row(

       children: <Widget>[

       Expanded(
         child: Text("Color"),
       ),

         Expanded(

          child: Icon(Icons.arrow_drop_down),

         ),
       ],
     ),
     
     )


    ),







 Expanded(

     child: MaterialButton(onPressed: (){},
     
     color: Colors.white,
     textColor: Colors.grey,
     elevation: 0.2,
     child: Row(

       children: <Widget>[

       Expanded(
         child: Text("Cantidad"),
       ),

         Expanded(

          child: Icon(Icons.arrow_drop_down),

         ),
       ],
     ),
     
     )


    ),















  ],
),





//===========================================sub-buttoms================================


Row(
  children: <Widget>[

    Expanded(

     child: MaterialButton(onPressed: (){},
     
     color: Colors.red,
     textColor: Colors.white,
     elevation: 0.2,
     child:Text("Comprar ahora") 
     ),


    ),

    IconButton(icon: Icon(Icons.add_shopping_cart,color:Colors.red,),onPressed: (){},),
   IconButton(icon: Icon(Icons.favorite_border,color:Colors.red),onPressed: (){},),



  ],
),



   ],


   ),



    );
  }
}
