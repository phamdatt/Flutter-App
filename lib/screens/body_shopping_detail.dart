// ignore_for_file: prefer_const_constructors, deprecated_member_use, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_app/contants.dart';
import 'package:my_app/models/Product.dart';
import 'package:my_app/theme/colors.dart';

class BodyShoppingDetail extends StatelessWidget {
  final Product product;
  const BodyShoppingDetail({ Key? key,required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size =MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children:<Widget> [
          SizedBox(
            height: size.height,
            child: Stack(
              children: <Widget>[
               
                Container(
                  margin: EdgeInsets.only(top:size.height * 0.4),
                  padding:EdgeInsets.only(top:size.height * 0.12,left: 20,right: 20),
                  // ignore: prefer_const_constructors
                  decoration: BoxDecoration(
                    color:Colors.white,
                    borderRadius: const BorderRadius.only(topLeft:Radius.circular(13),topRight: Radius.circular(13))
                  ),
                  child: Column(children: <Widget>[
                    SizedBox(height: 10,),
                    ColorAndSize(product: product),
                      SizedBox(height: 10,),
                    Description(product: product),
                      SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,

                      children: [
                        CartCounter(),
                        Container(
                          padding: EdgeInsets.all(8),
                          height: 32,
                          width: 32,
                          decoration: BoxDecoration(
                            color:Color(0xFFFF6464),
                            shape: BoxShape.circle,

                          ),
                          child: SvgPicture.asset(AppUi.iconHeart,color: Colors.white,),
                        )
                      ],
                    ),
                      SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: Row(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(right: 10),
                            height: 50,
                            width: 60,
                            decoration:BoxDecoration(
                              borderRadius:BorderRadius.circular(18),
                              border: Border.all(                              
                                color: product.color,
                              )
                            ),
                            child: IconButton(
                              icon:SvgPicture.asset(AppUi.iconAddToCart),
                              onPressed: (){},
                            ),
                          ),
                          Expanded(
                            child: SizedBox(
                              height: 50,
                              child: FlatButton(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(13)
                                ),
                                color: product.color,
                                onPressed: (){},child: Text("Buy, now".toUpperCase(),style: TextStyle(
                                fontSize: 17,
                                fontWeight:FontWeight.bold
                              ),),),
                            ),
                          )
                        ],
                      ),
                    )
                  ],),
                ),
                 ProductTitleAndImage(product: product)
                
              ],
            ),
          )
        ],),
    );
  }
}
class CartCounter extends StatefulWidget{
  @override
  _CartCounterState createState()=>_CartCounterState();
}
class _CartCounterState extends State<CartCounter>{
  int numOfItems =1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        buildOutlineButton(
          icon:Icons.remove,
          press: (){
            setState(() {
              if(numOfItems==0){
                return;
              }
              numOfItems--;
            });
          }
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Text("$numOfItems",style:Theme.of(context).textTheme.headline6),
        ),
        buildOutlineButton(
          icon:Icons.add,
          press: (){
            setState(() {
              numOfItems++;
            });
          }
        ),
      ],
    );
  }

  SizedBox buildOutlineButton({ required IconData icon, required VoidCallback press}) {
    return SizedBox(
       width: 40,
       height: 32,
       child:  OutlineButton( 
         padding: EdgeInsets.zero,
         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(13),
         
         ),         
         child: Icon(icon, color: Colors.black),
         onPressed: press,       
       ));
  }
  
}

class Description extends StatelessWidget {
  const Description({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Text(
        product.description,
        style:TextStyle(height: 1.5),
        ),
      
    );
  }
}

class ColorAndSize extends StatelessWidget {
  const ColorAndSize({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Row(     
      children: <Widget>[
        Expanded(
          
          child: Column(children: <Widget>[
            Text("Color"),
            Row(
              children: <Widget>[
              ColorDot(color: Color(0xFF356C95),isSelected: true,),
              ColorDot(color: Color(0xFFF8C078)),
              ColorDot(color: Color(0xFFA29B9B))
              ],
            )
          ],
          crossAxisAlignment: CrossAxisAlignment.start,),
        ),
        Expanded(child: RichText(text: TextSpan(
          style: TextStyle(color: kTextColor),
          children: [
            TextSpan(text:"Size\n"),
            TextSpan(
              text: "${product.size} cm",
              style: Theme.of(context).textTheme.headline5!.copyWith(fontWeight: FontWeight.bold)
            )
          ]
        )))
      ],
    );
  }
}

class ColorDot extends StatelessWidget {
  final Color color;
  final bool isSelected;
  const ColorDot({
    Key? key,
    required this.color, this.isSelected=false
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:EdgeInsets.only( top: 5,right: 10),
      padding: EdgeInsets.all(2.5),
      height: 24,
      width: 24,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border:Border.all(color:isSelected ? color:Colors.transparent)
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color:color,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}

class ProductTitleAndImage extends StatelessWidget {
  const ProductTitleAndImage({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Aristocratic Hand Bag",
            style:TextStyle(color: Colors.white)
          ),
          Text(product.title,
          style:Theme.of(context).textTheme.headline4!.copyWith(color:Colors.white,fontWeight: FontWeight.bold)
          ),
          SizedBox(height: 20),
          Row(
            children: <Widget>[
            RichText(
              text: TextSpan(
              children: [
                TextSpan(text:'Price\n',style: TextStyle(color: Colors.white)),
                TextSpan(
                  text: "\$${product.price}",
                  style: Theme.of(context).textTheme.headline4!.copyWith(color: Colors.white,fontWeight: FontWeight.bold
                  )
                ),
              ]
            )),
            SizedBox(width: 20),
              Expanded(child:Hero(
                tag: "${product.id}",
                child: Image.asset(product.image,fit: BoxFit.fill,)))                      
          ],),
         
        ],
      ),
    );
  }
}