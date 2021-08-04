import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:product_rest_api/models/products_models.dart';
import 'package:product_rest_api/repositories/product_repository.dart';

class HomeScreen extends StatefulWidget {
  static const String id = 'home-screen';

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  ProductsRepositoryIMPL _productsRepositoryIMPL = ProductsRepositoryIMPL();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Products List"),
      ),
      body: FutureBuilder(
        future: _productsRepositoryIMPL.getProducts(),
        builder: (context, AsyncSnapshot<List<ProductAllList>> snapshot) {
          if (snapshot.hasData) {
            List<ProductAllList>? articles = snapshot.data;
            return ListView.builder(
                itemCount: articles!.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 5, vertical: 2),
                    child: Card(
                      shadowColor: Colors.blue,
                      elevation: 1.5,
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 210,
                        padding: EdgeInsets.all(10),
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  snapshot.data![index].title as String,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                                FittedBox(
                                  fit: BoxFit.contain,
                                  child: Icon(
                                    Icons.image_sharp,
                                    size: 120,
                                    color: Colors.grey,
                                  ),
                                ),
                                Text(
                                  "Sizes: ${snapshot.data![index].clothSize}",
                                  style: TextStyle(fontSize: 12),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "${snapshot.data![index].colors}",
                                  style: TextStyle(fontSize: 12),
                                ),
                              ],
                            ),
                            SizedBox(width: 10,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 30,
                                ),
                                Row(
                                  children: [
                                    Column(
                                      children: [
                                        Text("Price: ",style: TextStyle(fontSize: 13)),
                                        Text(
                                          "₹" +
                                              "${snapshot.data![index].discountPrice as String}",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Column(
                                      children: [
                                        Text("Actual Price: ",style: TextStyle(fontSize: 13)),
                                        Text(
                                          "₹" +
                                              "${snapshot.data![index].actualPrice as String}",
                                          style: TextStyle(
                                              decoration:
                                                  TextDecoration.lineThrough),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Column(
                                      children: [
                                        Text("Discount: ",style: TextStyle(fontSize: 13)),
                                        Text(
                                          '${snapshot.data![index].discountPrecentage}',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Spacer(),
                                Text(
                                  "Total Price: ₹" +
                                      "${snapshot.data![index].discountPrice}",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Spacer(),
                               ],
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                });
          }
          return Center(
            child: CircularProgressIndicator(
              backgroundColor: Colors.red,
            ),
          );
        },
      ),
    );
  }
}
