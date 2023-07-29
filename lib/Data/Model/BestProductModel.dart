class BestProductModel {
  final String name;
  final String id;
  final String categories;
  final String price;
   int quantity;
  final String resturant;
  final String description;
  final String rate;
  final String image;
  BestProductModel(
      {required this.id,
      required this.name,
      required this.image,
      required this.categories,
      required this.description,
      required this.price,
      required this.rate,
      required this.quantity, 
      required this.resturant});
}
