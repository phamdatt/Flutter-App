import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_app/models/ProductExample01.dart';
import 'package:my_app/services/size_config.dart';
import 'package:my_app/theme/colors.dart';

class Body extends StatelessWidget {
  final ProductExample01 product;
   const Body({Key? key,required this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        width: double.infinity,
        height: SizeConfig.screenHeight,
        child: Stack(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            ProductInfo(product: product),
            Positioned(
                top: 375,
                left: 0,
                right: 0,
                child: ProductDescription(product: product)),
            Positioned(
                top: 95,
                right: -55,
                child: Image.network(
                  product.image,
                  fit: BoxFit.cover,
                  height: 378,
                  width: 364,
                ))
          ],
        ),
      ),
    );
  }
}

class ProductDescription extends StatelessWidget {
  final ProductExample01 product;
  const ProductDescription({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(minHeight: 440),
      padding: EdgeInsets.symmetric(horizontal: 20),
      height: 500,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12), topRight: Radius.circular(12))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            product.subTitle,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 30),
          Text(
            product.description,
            style: TextStyle(
                color: kTextSpeedCodeColor.withOpacity(0.7), height: 1.7),
          ),
          SizedBox(height: 30),
          SizedBox(
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: TextButton(
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      )),
                      backgroundColor: MaterialStateProperty.all<Color>(
                          kPrimarySpeedCodekSecondarySpeedCodeColor)),
                  onPressed: () {},
                  child: const Text("Add to cart",
                      style: TextStyle(
                          color: kTextSpeedCodeColor,
                          fontWeight: FontWeight.bold))),
            ),
          )
        ],
      ),
    );
  }
}

class ProductInfo extends StatelessWidget {
  final ProductExample01 product;
  const ProductInfo({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      height: 375,
      width: 150,
      // color: Colors.black45,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(product.category,
              style: TextStyle(
                color: kTextColor.withOpacity(0.6),
              )),
          SizedBox(height: 10),
          Text(product.title,
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  letterSpacing: -0.8,
                  height: 1.4)),
          SizedBox(height: 20),
          Text("From",
              style: TextStyle(
                color: kTextColor.withOpacity(0.6),
              )),
          Text(
            "\$${product.price}",
            style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.bold, height: 1.6),
          ),
          SizedBox(height: 20),
          Text("Avaiable Colors",
              style: TextStyle(
                color: kTextColor.withOpacity(0.6),
              )),
          Container(
            margin: EdgeInsets.only(top: 10, right: 10),
            height: 24,
            width: 24,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              color: Color(0xFF7BA275),
            ),
            child: Icon(
              Icons.check_box,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
