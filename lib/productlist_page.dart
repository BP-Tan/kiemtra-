import 'package:flutter/material.dart';
import 'package:flutter_application_1/product_provider.dart';
import 'package:provider/provider.dart';

class ProductListPage extends StatelessWidget {
  const ProductListPage({super.key});

  @override
  Widget build(BuildContext context) {
    var pp = Provider.of<ProductProvider>(context);
    if (pp.list.isEmpty) {
      pp.getList();
    }
    return Scaffold(
      body: GridView.count(
        crossAxisSpacing: 2,
        mainAxisSpacing: 2,
        crossAxisCount: 3,

        //scrollDirection: Axis.vertical,
        children: [
          ...pp.list.map((e) {
            return Card(
              child: Expanded(
                child: Container(
                    child: Column(
                  children: [
                    Container(child: Text(e.category ?? "")),
                    //Text(e.title ?? ""),
                    //Text(e.description ?? ""),
                    Container(
                        height: 100,
                        child: Image.network(e.image.toString(), width: 70)),

                    Container(
                      height: 50,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(" \$ " + e.price.toString()),
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                size: 16,
                                color: Colors.red,
                              ),
                              Icon(
                                Icons.star,
                                size: 16,
                                color: Colors.red,
                              ),
                              Icon(
                                Icons.star,
                                size: 16,
                                color: Colors.red,
                              ),
                              Icon(
                                Icons.star_half,
                                size: 16,
                                color: Colors.red,
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                )),
              ),
            );
          }).toList()
        ],
      ),
    );
  }
}
