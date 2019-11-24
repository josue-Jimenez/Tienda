import 'package:flutter/material.dart';
import 'package:online_store/Pages/Product_detail.dart';

class Products extends StatefulWidget {
 

  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var productList=[
    {
      "nombre":"Smoking",
      "picture":"images/products/blazer1.jpeg",
      "oldPrice":120,
      "price":85,
    },
    {
      "nombre":"Vestido rojo",
      "picture":"images/products/dress1.jpeg",
      "oldPrice":100,
      "price":50,
    },

  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: productList.length,
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
    itemBuilder: (BuildContext context, int index ){
      return SingleProd(
        productName: productList[index]['nombre'],
          productPicture: productList[index]['picture'],
            productPrice: productList[index]['price'],
              productOldPrice: productList[index]['oldPrice'],
      );},);
  }
}
class SingleProd extends StatelessWidget {
 
  final productName;
  final productPrice;
  final productPicture;
  final productOldPrice;

  const SingleProd({
    this.productName, 
    this.productPrice, 
    this.productPicture,
    this.productOldPrice});
  @override
  Widget build(BuildContext context) {
    return Card(
       child: Hero(tag: productName, 
       child: Material(child: InkWell(
         onTap: ()=>Navigator.of(context).push(MaterialPageRoute(
           builder: (context)=>ProductDetails(
              product_details_name: productName,
              product_details_new_price: productPrice,
              product_details_old_price: productOldPrice,
              product_details_picture: productPicture,
              
              
              
              ))),
         child: GridTile(
           footer: Container(
             color: Colors.white70,
             child: ListTile(
               leading: Text(productName, style: TextStyle(fontWeight: FontWeight.bold)
               ),
               title: Text('\$$productPrice', style: TextStyle(color: Colors.red, fontWeight: FontWeight.w800),),
               subtitle: Text('\$$productOldPrice', style: TextStyle(color: Colors.black54, fontWeight: FontWeight.w800, decoration:TextDecoration.lineThrough ),),
             ) ,
             ),
           child: Image.asset(productPicture, fit: BoxFit.contain,),
           ) ,
          
           
       ),
       ),
       ),
    );
  }
}