import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:doric/contants.dart';
import 'package:doric/models/CategoryDoric.dart';
import 'package:doric/models/ProductDoric.dart';
import 'package:doric/product/product_detail.dart';
import 'package:doric/screens/category_menu.dart';
import 'package:doric/theme/colors.dart';
import 'package:doric/widgets/main_header.dart';
import 'package:page_transition/page_transition.dart';

class HomeScreenEcomerce extends StatefulWidget {
  @override
  _HomeScreenEcomerceState createState() => _HomeScreenEcomerceState();
}

class _HomeScreenEcomerceState extends State<HomeScreenEcomerce> {
  int activeIndex = 0;
  Widget build(BuildContext context) {
    return Scaffold(
      body: getBody(),
      bottomNavigationBar: getFooter(),
    );
  }

  Widget getBody() {
    const outlineInputBorder = OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(defaultBorderRadius)),
        borderSide: BorderSide.none);
    return IndexedStack(
      index: activeIndex,
      children: <Widget>[
        HomePageEcomerce(outlineInputBorder: outlineInputBorder),
        CategoryMenu(),
        Center(
            child: Text("User",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold)))
      ],
    );
  }

  List<IconData> icons = [Icons.home, Icons.list, Icons.person_off_outlined];
  Widget getFooter() {
    return Container(
      height: 80,
      decoration: BoxDecoration(color: Colors.white),
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(
                icons.length,
                (index) => IconButton(
                    onPressed: () {
                      setState(() {
                        activeIndex = index;
                      });
                    },
                    icon: Icon(icons[index],
                        color: activeIndex == index
                            ? Colors.black
                            : Colors.grey)))),
      ),
    );
  }
}

class HomePageEcomerce extends StatelessWidget {
  const HomePageEcomerce({
    Key? key,
    required this.outlineInputBorder,
  }) : super(key: key);

  final OutlineInputBorder outlineInputBorder;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          MainHeader(
            isLeftIcon: true,
            headerTitle: "",
            leftIcon: AppUi.fadoLogo,
            isNotifications: true,
            isCart: false,
          ),
          Padding(
            padding: const EdgeInsets.all(defaultPadding),
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Explore",
                      style: Theme.of(context).textTheme.headline4!.copyWith(
                          fontWeight: FontWeight.w500, color: Colors.black)),
                  Text("Best outfit for you", style: TextStyle(fontSize: 18)),
                  SizedBox(height: 20),
                  SearchForm(outlineInputBorder: outlineInputBorder)
                ],
              ),
            ),
          ),
          Categories(),
          NewArrial(),
          Popular()
        ],
      ),
    );
  }
}

class RootBody extends StatefulWidget {
  final OutlineInputBorder outlineInputBorder;
  final int activeIndex;
  const RootBody(
      {Key? key, required this.activeIndex, required this.outlineInputBorder})
      : super(key: key);
  @override
  _RootBodyState createState() => _RootBodyState(
      activeIndex: activeIndex, outlineInputBorder: outlineInputBorder);
}

class _RootBodyState extends State<RootBody> {
  final OutlineInputBorder outlineInputBorder;
  final int activeIndex;
  _RootBodyState(
      {Key? key, required this.activeIndex, required this.outlineInputBorder});

  Widget build(BuildContext context) {
    return IndexedStack(
      index: activeIndex,
      children: <Widget>[
        HomePageEcomerce(outlineInputBorder: widget().outlineInputBorder),
        Center(
            child: Text("Notifications",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold))),
        Center(
            child: Text("User",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold)))
      ],
    );
  }
}

class Popular extends StatelessWidget {
  const Popular({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SectionTitle(
          title: "Popular",
          onPress: () {},
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(
                product_popular.length,
                (index) => ProductCard(
                      productName: product_popular[index].productName,
                      onPress: () {
                        Navigator.push(
                            context,
                            PageTransition(
                                alignment: Alignment.bottomCenter,
                                child: ProductDetailPage(
                                    product: product_popular[index]),
                                type: PageTransitionType.scale));
                      },
                      productPrice: product_popular[index].productPrice,
                      productImage: product_popular[index].productImage,
                    )),
          ),
        )
      ],
    );
  }
}

class NewArrial extends StatelessWidget {
  const NewArrial({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SectionTitle(
          title: "New arrial",
          onPress: () {},
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(
                product_arrial.length,
                (index) => ProductCard(
                      productName: product_arrial[index].productName,
                      onPress: () {
                        Navigator.push(
                            context,
                            PageTransition(
                                alignment: Alignment.bottomCenter,
                                child: ProductDetailPage(
                                  product: product_arrial[index],
                                ),
                                type: PageTransitionType.scale));
                      },
                      productPrice: product_arrial[index].productPrice,
                      productImage: product_arrial[index].productImage,
                    )),
          ),
        )
      ],
    );
  }
}

class ProductCard extends StatelessWidget {
  final VoidCallback onPress;
  final String productName, productImage;
  final double productPrice;
  final Color bgColor;
  const ProductCard(
      {Key? key,
      required this.onPress,
      required this.productName,
      required this.productPrice,
      required this.productImage,
      this.bgColor = const Color(0xFFEFEFF2)})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        padding: const EdgeInsets.only(left: defaultPadding),
        child: Padding(
          padding: const EdgeInsets.all(defaultPadding / 4),
          child: Container(
            width: 154,
            padding: const EdgeInsets.all(defaultPadding),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(defaultBorderRadius)),
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: bgColor,
                      borderRadius: BorderRadius.circular(defaultBorderRadius)),
                  child: Image.asset(
                    productImage,
                    height: 132,
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Expanded(
                      child: Text(productName,
                          style: TextStyle(color: Colors.black)),
                    ),
                    Text("${productPrice.toInt()}",
                        style: Theme.of(context).textTheme.subtitle2),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SectionTitle extends StatelessWidget {
  final String title;
  final VoidCallback onPress;
  const SectionTitle({Key? key, required this.title, required this.onPress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(title,
              style: Theme.of(context)
                  .textTheme
                  .subtitle1!
                  .copyWith(color: Colors.black, fontWeight: FontWeight.w500)),
          TextButton(
            onPressed: onPress,
            child: Text("See all", style: TextStyle(color: Colors.black54)),
          ),
        ],
      ),
    );
  }
}

class Categories extends StatelessWidget {
  const Categories({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
          children: List.generate(
              category_doric.length,
              (index) => CategoryCard(
                  categoryTitle: category_doric[index].categoryTitle,
                  categoryIcon: category_doric[index].categoryIcon))),
    );
  }
}

class CategoryCard extends StatelessWidget {
  final String categoryTitle;
  final dynamic categoryIcon;
  const CategoryCard({
    Key? key,
    required this.categoryTitle,
    required this.categoryIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(defaultPadding),
      child: OutlinedButton(
          style: OutlinedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(defaultPadding))),
          onPressed: () {},
          child: Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: defaultPadding / 6, vertical: defaultPadding / 2),
            child: Column(
              children: <Widget>[
                SvgPicture.asset(categoryIcon),
                Text(categoryTitle,
                    style: Theme.of(context).textTheme.subtitle2)
              ],
            ),
          )),
    );
  }
}

class SearchForm extends StatelessWidget {
  const SearchForm({
    Key? key,
    required this.outlineInputBorder,
  }) : super(key: key);

  final OutlineInputBorder outlineInputBorder;

  @override
  Widget build(BuildContext context) {
    return Form(
      child: TextFormField(
        decoration: InputDecoration(
            hintText: "Search Items...",
            filled: true,
            fillColor: Colors.white,
            border: outlineInputBorder,
            enabledBorder: outlineInputBorder,
            focusedErrorBorder: outlineInputBorder,
            prefixIcon: Padding(
              padding: const EdgeInsets.all(12),
              child: SvgPicture.asset(AppUi.iconSearch),
            ),
            suffixIcon: Padding(
              padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
              child: SizedBox(
                height: 48,
                width: 48,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: primaryColor,
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(defaultBorderRadius))),
                    onPressed: () {},
                    child: SvgPicture.asset("assets/icons/Filter.svg")),
              ),
            )),
      ),
    );
  }
}
