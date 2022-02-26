class CategoryDoric {
  final String categoryTitle;
  final dynamic categoryIcon;

  const CategoryDoric({
    required this.categoryTitle,
    required this.categoryIcon,
  });
}

List<CategoryDoric> category_doric = [
  CategoryDoric(categoryTitle: "Dress", categoryIcon: "assets/icons/dress.svg"),
  CategoryDoric(categoryTitle: "Shirt", categoryIcon: "assets/icons/shirt.svg"),
  CategoryDoric(categoryTitle: "Pants", categoryIcon: "assets/icons/pants.svg"),
  CategoryDoric(
      categoryTitle: "Tshirt", categoryIcon: "assets/icons/Tshirt.svg"),
  CategoryDoric(categoryTitle: "Dress", categoryIcon: "assets/icons/dress.svg")
];

