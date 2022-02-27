import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_app/contants.dart';
import 'package:my_app/models/ProductDoric.dart';
import 'package:my_app/theme/colors.dart';
import 'package:my_app/widgets/main_header.dart';

class ProductDetailPage extends StatelessWidget {
  final ProductDoric product;
  const ProductDetailPage({
    Key? key,
    required this.product,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          MainHeader(
              isLeftIcon: false,
              headerTitle: "Chi tiết sản phẩm",
              leftIcon: AppUi.iconBack,
              isNotifications: false,
              isCart: true),
          Image.asset(
            product.productImage,
            height: MediaQuery.of(context).size.height * 0.4,
            fit: BoxFit.cover,
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.fromLTRB(defaultPadding, defaultPadding * 2,
                  defaultPadding, defaultPadding),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(defaultBorderRadius * 3),
                    topRight: Radius.circular(defaultBorderRadius * 3),
                  )),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(product.productName,
                            style: Theme.of(context).textTheme.headline6),
                      ),
                      SizedBox(
                        width: defaultPadding,
                      ),
                      Text("\$" + product.productPrice.toString(),
                          style: Theme.of(context).textTheme.headline6)
                    ],
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: defaultPadding),
                    child: Text(
                        "A Henley shirts is a collarless pullover shirt, by a round neckline and a placket about 3 to 5 inches long and usually having 2-5 buttons"),
                  ),
                  Text("Colors"),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
