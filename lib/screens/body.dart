import 'package:flutter/material.dart';
import 'package:my_app/models/Category.dart';
import 'package:my_app/models/ProductExample01.dart';
import 'package:my_app/screens/HomeScreenFb.dart';
import 'package:my_app/screens/details/details_speed_code.dart';
import 'package:my_app/services/getCategories.dart';
import 'package:my_app/services/getProducts.dart';
import 'package:my_app/services/size_config.dart';
import 'package:my_app/theme/colors.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.all(20),
              child: TitleText(
                title: "Browse by Categories",
              ),
            ),
            FutureBuilder<List<Category>>(
                future: fetchCategory(),
                builder: (context, snapshot) {
                  return snapshot.hasData
                      ? Categories(
                          categories: snapshot.data!,
                        )
                      : const Padding(
                          padding: EdgeInsets.all(20),
                          child: CircularProgressIndicator(),
                        );
                }),
            const Divider(
              height: 5,
            ),
            const Padding(
              padding: EdgeInsets.all(20),
              child: TitleText(title: "Recommands for you"),
            ),
            FutureBuilder<List<ProductExample01>>(
                future: getProductsByDio(),
                builder: (context, snapshot) {
                  return snapshot.hasData
                      ? RecommandProduct(product: snapshot.data!)
                      : Padding(
                          padding: EdgeInsets.all(20),
                          child: CircularProgressIndicator(),
                        );
                }),
          ],
        ),
      ),
    );
  }
}

class RecommandProduct extends StatelessWidget {
  final List<ProductExample01> product;
  const RecommandProduct({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: GridView.builder(
          shrinkWrap: true,
          itemCount: product.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount:
                  SizeConfig.orientation == Orientation.portrait ? 2 : 4,
              childAspectRatio: 0.639,
              mainAxisSpacing: 20,
              crossAxisSpacing: 20),
          itemBuilder: (context, index) {
            return ProductCard(
                product: product[index],
                press: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return DetailsSpeedCode(product: product[index]
                    );
                  }));
                });
          }),
    );
  }
}

class ProductCard extends StatelessWidget {
  final ProductExample01 product;
  final VoidCallback press;
  const ProductCard({
    Key? key,
    required this.product,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        width: 145,
        decoration: BoxDecoration(
          color: kSecondarySpeedCodeColor,
          borderRadius: BorderRadius.circular(30),
        ),
        child: AspectRatio(
          aspectRatio: 0.693,
          child: Column(
            children: <Widget>[
              AspectRatio(
                aspectRatio: 1,
                child: FadeInImage.assetNetwork(
                    placeholder: "assets/images/spinner.gif",
                    image: product.image),
              ),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: TitleText(title: product.title)),
              SizedBox(height: 5),
              Text("${product.price}"),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}

class Categories extends StatelessWidget {
  final List<Category> categories;
  const Categories({
    Key? key,
    required this.categories,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: List.generate(categories.length,
              (index) => CategoryCard(category: categories[index])),
        ));
  }
}

class CategoryCard extends StatelessWidget {
  final Category category;
  const CategoryCard({
    Key? key,
    required this.category,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: SizedBox(
        width: 205,
        child: AspectRatio(
          aspectRatio: 0.83,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: <Widget>[
              Container(),
              ClipPath(
                clipper: CategoryCustomShaple(),
                child: AspectRatio(
                  aspectRatio: 1.025,
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    color: kSecondarySpeedCodeColor,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        TitleText(title: category.title),
                        SizedBox(height: 10),
                        Text("${category.numOfProducts}+ Products",
                            style: TextStyle(
                              color: kTextSpeedCodeColor.withOpacity(0.6),
                            ))
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  child: AspectRatio(
                    aspectRatio: 1.15,
                    child: FadeInImage.assetNetwork(
                        placeholder: "assets/images/spinner.gif",
                        image: category.image),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}

class TitleText extends StatelessWidget {
  final String title;
  const TitleText({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(title,
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold));
  }
}

class CategoryCustomShaple extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    double height = size.height;
    double width = size.width;
    double cornerSize = 30;
    path.lineTo(0, height - cornerSize);
    path.quadraticBezierTo(0, height, cornerSize, height);
    path.lineTo(width - cornerSize, height);
    path.quadraticBezierTo(width, height, width, height - cornerSize);
    path.lineTo(width, cornerSize);
    path.quadraticBezierTo(width, 0, width - cornerSize, 0);
    path.lineTo(cornerSize, cornerSize * 0.75);
    path.quadraticBezierTo(0, cornerSize, 0, cornerSize * 2);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
