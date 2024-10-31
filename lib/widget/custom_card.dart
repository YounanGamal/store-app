import 'package:flutter/material.dart';
import 'package:store_app/models/product%20model/product_model.dart';

class CustomCard extends StatelessWidget {
  CustomCard({required this.productModel, super.key});
  ProductModel productModel;
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                blurRadius: 40,
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 0,
                offset: Offset(10, 10),
              ),
            ],
          ),
          child: Card(
            shape:
                BeveledRectangleBorder(borderRadius: BorderRadius.circular(2)),
            elevation: 10,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    productModel.title.substring(0, 6),
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        r'$' + '${productModel.price}',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.favorite,
                          color: Colors.red,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          right: 20,
          top: -60,
          child: Image.network(
            productModel.image,
            width: 90,
            height: 90,
          ),
        ),
      ],
    );
  }
}
