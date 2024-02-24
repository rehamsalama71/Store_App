import 'package:flutter/material.dart';
import 'package:store_app/models/product_model.dart';
import 'package:store_app/screens/updata_product_page.dart';

class CustomCard2 extends StatelessWidget {
   CustomCard2({required this.product});
ProductModel product;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, UpdateProductPage.id,arguments: product);
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xffC57B96),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  width: double.infinity,
                  height: 60,
                  child: Center(
                      child: Text(
                    'Owner',
                    
                    style: TextStyle(color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.w400
                    ),
                  )),
                ),
              );
  }
}