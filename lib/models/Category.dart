// ignore_for_file: file_names

class Category{
  final String id,title,image;
  final int numOfProducts;
  Category({required this.id,required this.image, required this.title,required this.numOfProducts});
  factory Category.fromJson(Map<String, dynamic> json){
return Category(
  id:json["id"],
  title:json["title"],
  image:json["image"],
  numOfProducts: json["numOfProducts"]
  );
  }
}
Category category = Category(
  id: "1",
  title:"Aimchair",
  image:"https://i.imgur.com/JqKDdxj.png",
  numOfProducts: 100
);