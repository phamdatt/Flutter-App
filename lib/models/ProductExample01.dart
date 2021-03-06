class ProductExample01 {
  final int price;
  final String id, title, category, image, subTitle, description;

  ProductExample01({
    required this.id,
    required this.price,
    required this.title,
    required this.category,
    required this.image,
    required this.subTitle,
    required this.description,
  });

  // It create an Category from JSON
  factory ProductExample01.fromJson(Map<String, dynamic> json) {
    return ProductExample01(
      id: json["id"],
      title: json["title"],
      image: json["image"],
      price: json["price"],
      category: json["category"],
      subTitle: json["subTitle"],
      description: json["description"],
    );
  }
}

ProductExample01 product = ProductExample01(
  id: "1",
  price: 1600,
  title: "Wood Frame",
  image: "https://i.imgur.com/sI4GvE6.png",
  category: "Chair",
  subTitle: "Tieton Armchair",
  description: description,
);
String description =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";
