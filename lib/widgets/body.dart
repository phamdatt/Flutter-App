import 'package:flutter/material.dart';
import 'package:my_app/app_ui.dart';
import 'package:my_app/theme/colors.dart';
import 'package:my_app/models/Product.dart';

class Body extends StatelessWidget {
  final String title;
  const Body({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Product> products = [
      Product(
        id: 1,
        image: AppUi.iconBag1,
        title: 'Office code',
        price: 234,
        size: 12,
        description: 'Select in fanstatic',
        color: Color(0xFF3D82AE),
      ),
      Product(
        id: 1,
        image: AppUi.iconBag2,
        title: 'Office code',
        price: 234,
        size: 12,
        description: 'Select in fanstatic',
        color: Color(0xFF3D82AE),
      ),
      Product(
        id: 1,
        image: AppUi.iconBag3,
        title: 'Office code',
        price: 234,
        size: 12,
        description: 'Select in fanstatic',
        color: Color(0xFF3D82AE),
      ),
      Product(
        id: 1,
        image: AppUi.iconBag4,
        title: 'Office code',
        price: 234,
        size: 12,
        description: 'Select in fanstatic',
        color: Color(0xFF3D82AE),
      ),
      Product(
        id: 1,
        image: AppUi.iconBag5,
        title: 'Office code',
        price: 234,
        size: 12,
        description: 'Select in fanstatic',
        color: Color(0xFF3D82AE),
      ),
      Product(
        id: 1,
        image: AppUi.iconBag6,
        title: 'Office code',
        price: 234,
        size: 12,
        description: 'Select in fanstatic',
        color: const Color(0xFF3D82AE),
      )
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: Text(title,
              style: Theme.of(context)
                  .textTheme
                  .headline5!
                  .copyWith(fontWeight: FontWeight.bold)),
        ),
        Categories(),
        Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              height: 180,
              width: 160,
              decoration: BoxDecoration(
                  color: products[0].color,
                  borderRadius: BorderRadius.circular(16)),
              child: Image.asset(AppUi.iconBag1),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Text(products[0].title,style: TextStyle(color:kTextColor)),
            ),
          ],
        )
      ],
    );
  }
}

class Categories extends StatefulWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> categories = ["Hand bag", "Jewellery", "Footwear", "Dresses"];
  int selectedIdx = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: SizedBox(
          height: 25,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: categories.length,
            itemBuilder: (context, index) {
              return buildCategory(index);
            },
          )),
    );
  }

  Widget buildCategory(int index) => GestureDetector(
        onTap: () {
          setState(() {
            selectedIdx = index;
          });
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                categories[index],
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: selectedIdx == index ? kTextColor : Colors.black26),
              ),
              Container(
                  margin: EdgeInsets.only(top: 6),
                  height: 2,
                  width: 30,
                  color:
                      selectedIdx == index ? Colors.black : Colors.transparent)
            ],
          ),
        ),
      );
}
