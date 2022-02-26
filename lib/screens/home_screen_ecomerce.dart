import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_app/contants.dart';
import 'package:my_app/models/CategoryDoric.dart';
import 'package:my_app/theme/colors.dart';
import 'package:my_app/widgets/main_header.dart';

class HomeScreenEcomerce extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const outlineInputBorder = OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(defaultBorderRadius)),
        borderSide: BorderSide.none);
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          MainHeader(
            headerTitle: "",
            leftIcon: AppUi.fadoLogo,
            rightIcon: AppUi.iconNotifications,
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
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
                children: List.generate(
                    category_doric.length,
                    (index) => CategoryCard(
                        categoryTitle: category_doric[index].categoryTitle,
                        categoryIcon: category_doric[index].categoryIcon))),
          ),
        ],
      ),
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
