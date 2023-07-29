// import 'dart:convert';

// import 'package:delivery_app/Model/ProductModel.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:get/get.dart';
// import 'package:http/http.dart' as http;
// import '../../Services/ServicesFuncation.dart';

// class ProductController extends GetxController {
//  List<ProductList> productListcontroller =[]; 
//   Future<List<ProductModel>> prouctListFetch() async {
//     try {
//       http.Response response = await http.get(Uri.parse(''));
//       if (response.statusCode == 200) {
//         String data = response.body;
//         var jsonData = jsonDecode(data);
//         ProductList productModellist = ProductList.fromJson(jsonData);
//         List<ProductModel> productList = productModellist.productListmodel
//             .map((e) => ProductModel.fromJson(e))
//             .toList();
//         return productList;
//       } else {
//         print('error status ${response.statusCode}');
//       }
//     } catch (e) {
//       print('error $e');
//     }

//     // return [];
//   }
// }
