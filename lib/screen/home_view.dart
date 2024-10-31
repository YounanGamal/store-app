import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:store_app/models/product%20model/product_model.dart';
import 'package:store_app/services/all_product_service.dart';
import 'package:store_app/widget/custom_card.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static const String routeName = 'home';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,

        title: const Text('New Ternd'),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                FontAwesomeIcons.cartShopping,
              ),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10, top: 100),
        child: FutureBuilder<List<ProductModel>>(
          future: AllProductService().getAllProduct(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              print(snapshot.data);
              List<ProductModel> product = snapshot.data!;
              return GridView.builder(
                itemCount: product.length,
                clipBehavior: Clip.none,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1.3,
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 100,
                ),
                itemBuilder: (context, index) {
                  return CustomCard(
                    productModel: product[index],
                  );
                },
              );
            } else {
              print(snapshot.data);
              return const Center(
                child: CircularProgressIndicator(
                  color: Colors.blue,
                ),
              );
            }
          },
        ),
      ),
    );
  }
}
