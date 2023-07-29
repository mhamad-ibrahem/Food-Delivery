
class ProductModel {
  final String name;
  final String id;
  final String categories;
  final String price;
  final String resturant;
  final String description;
  final String rate;
  final String image;

  ProductModel(
      {required this.name,
      required this.id,
      required this.categories,
      required this.price,
      required this.resturant,
      required this.description,
      required this.rate,
      required this.image});
  factory ProductModel.fromJson(Map<String, dynamic> jsonData) {
    return ProductModel(
        name: jsonData['name'],
        id: jsonData['id'],
        categories: jsonData['categories'],
        price: jsonData['price'],
        resturant: jsonData['resturant'],
        description: jsonData['description'],
        rate: jsonData['rate'],
        image: jsonData['image']);
  }
}
class ProductList{
  final List<dynamic> productListmodel ;
  ProductList({required this.productListmodel});
  factory ProductList.fromJson(Map<String, dynamic> jsonData){
    return ProductList(productListmodel: jsonData['productList']);
  }
}