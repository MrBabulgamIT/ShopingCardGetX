
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_app/controller/dataController.dart';
import 'package:new_app/model/datamodel.dart';

class CheekoutPage extends StatelessWidget {
  CheekoutPage({super.key});
  final CardControllerr controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Obx(
              () => ListView.builder(
                  itemCount: controller.products.length,
                  itemBuilder: (context, index) {
                    return CardProductCard(
                      controllerr: controller,
                      index: index,
                      product: controller.products.keys.toList()[index],
                      quantity: controller.products.values.toList()[index],
                    );
                  }),
            ),
          ),
          CardTotal(),
          SizedBox(
            height: 30,
          )
        ],
      ),
    );
  }
}

class CardProductCard extends StatelessWidget {
 const CardProductCard(
      {super.key,
      required this.controllerr,
      required this.index,
      required this.product,
      required this.quantity});

  final CardControllerr controllerr;
  final Cold_Cures_Model product;
  final int quantity;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ClipRRect(
              child: Image(image: AssetImage(product.image.toString())),
            ),
            Expanded(
              child: Text(
                product.name.toString(),
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
            ),
            IconButton(
              onPressed: () {
                controllerr.removeProduct(product);
              },
              icon: Icon(Icons.remove_circle),
            ),
            Text(
              "${quantity}",
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
            IconButton(
              onPressed: () {
                controllerr.addtoCard(product);
              },
              icon: Icon(Icons.add_circle),
            ),
          ],
        ),
     const   SizedBox(
          height: 30,
        )
      ],
    );
  }
}

class CardTotal extends StatelessWidget {
  CardTotal({super.key});
  final CardControllerr controllerr = Get.find();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Obx(
        () => Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Total:",
              style: TextStyle(
                fontSize: 25,
              ),
            ),
            Text(
              controllerr.totalSum,
              style: const TextStyle(
                fontSize: 30,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
