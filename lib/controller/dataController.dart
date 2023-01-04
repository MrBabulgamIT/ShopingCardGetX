import 'dart:math';

import 'package:get/get.dart';
import 'package:new_app/model/datamodel.dart';

class CardControllerr extends GetxController {
  var _product = {}.obs;
  void addtoCard(Cold_Cures_Model product) {
    if (_product.containsKey(product)) {
      _product[product] +=  1;
    } else {
      _product[product] = 1;
    }
    Get.snackbar(
      "Product Added",
      "You Have adde the ${product.name} to the card",
      snackPosition: SnackPosition.BOTTOM,
      duration: Duration(seconds: 2),
    );
  }

  get products => _product;

  void removeProduct(Cold_Cures_Model product) {
    if (_product.containsKey(product) && _product[product] == 1) {
      _product.removeWhere((key, value) => key == product);
    } else {
      _product[product] -= 1;
    }
  }
  get productsSubtotal => _product.entries.map((e) => e.key.price * e.value).toList();

  get totalSum => _product.entries.map((e) => e.key.price * e.value)
      .toList().reduce((value, element) => value +element);



  get productSubtotal => _product.entries
      .map((product) => product.key.price * product.value)
      .toList();

  get total => _product.entries
      .map((product) => product.key.price * product.value)
      .toList()
      .reduce((value, element) => value + element);
}
