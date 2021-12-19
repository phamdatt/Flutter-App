// ignore_for_file: non_constant_identifier_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_app/contants.dart';
import 'package:my_app/models/Product.dart';
import 'package:my_app/screens/body_shopping_detail.dart';
import 'package:my_app/theme/colors.dart';

class DetailShopping extends StatelessWidget {
   final Product product;
  const DetailShopping({ Key? key,required this.product }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: product.color,
      appBar: HeaderDetail(context),
      body: BodyShoppingDetail(product:product),
    );
  }

  AppBar HeaderDetail(BuildContext context) {
    return AppBar(
      backgroundColor: product.color,
      elevation: 0,
      leading: IconButton(
        icon:SvgPicture.asset(AppUi.iconBack),
        onPressed: ()
        {
            Navigator.pop(context);
        },
      ),
      // ignore: prefer_const_constructors
      title:Text('Chi tiết sản phẩm',style: TextStyle(
        fontSize: 15,
        color: kTextColor
      ),       
      ),
      actions:<Widget> [
        IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: SvgPicture.asset(AppUi.iconSearch)),
        IconButton(onPressed: (){
          
        }, icon: SvgPicture.asset(AppUi.iconCart,color: kTextColor,)),
        SizedBox(
          width: 20/2,
        )
      ],
    
    );
  }
}                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     