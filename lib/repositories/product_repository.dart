import 'dart:async';
import 'dart:convert';
import 'package:product_rest_api/models/products_models.dart';
import 'package:http/http.dart' as http;

abstract class ProductRepository {
  Future<List<ProductAllList>> getProducts();
}

class ProductsRepositoryIMPL extends ProductRepository {
  @override
  Future<List<ProductAllList>> getProducts() async {
    var url = Uri.parse(
        'https://softawork2.xyz/fandlApi/product/get_all_product_list');
    var response = await http.get(url);
    if (response.statusCode == 200) {
      Map<String, dynamic> json = jsonDecode(response.body);
      List<dynamic> jsonbody = json['productAllList'];
      List<ProductAllList> articles = jsonbody
          .map((dynamic item) => ProductAllList.fromJson(item))
          .toList();
      return articles;
    } else {
      throw Exception('Failed');
    }
  }
}
