import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_app/cheekoutpage.dart';
import 'package:new_app/controller/dataController.dart';
import 'package:new_app/model/datamodel.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final cardController = Get.put(CardControllerr());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Card Item"),
      ),
      body: ListView.builder(
          itemCount: medicineInfor.length,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ClipRRect(
                  child: Image(
                    image: AssetImage(
                      medicineInfor[index].image.toString(),
                    ),
                    width: 50,
                    height: 50,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                Expanded(child: Text(medicineInfor[index].name.toString())),
                Expanded(child: Text(medicineInfor[index].price)),
                IconButton(
                    onPressed: () {
                      cardController.addtoCard(medicineInfor[index]);
                      Get.to(CheekoutPage());
                    },
                    icon: Icon(Icons.add_circle))
              ],
            );
          }),
    );
  }
}
