import 'package:flutter/material.dart';
import 'package:store_app/models/product_model.dart';
import 'package:store_app/screens/home_page.dart';
import 'package:store_app/screens/updata_product_page.dart';
import 'package:store_app/widgets/custom_card2.dart';

class SecStartPage extends StatelessWidget {
  SecStartPage({super.key});
  static String id = 'Sec Start';
   
  @override
  Widget build(BuildContext context) {
    // ProductModel product = ProductModel(
    //   rating: RatingModel(rate: 4.5, count: 100),
    //   id: '1',
    //   title: 'Sample Product',
    //   description: 'This is a sample product',
    //   price: '10',
    //   image: 'sample_image.jpg',
    //   category: 'Sample Category',
    // );
    return Scaffold(
    
      appBar: AppBar(
        backgroundColor:  Color(0xff895737),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(

            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                ' Choose Option Please ',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 38,
                  fontWeight: FontWeight.bold,
                    fontFamily: 'Pacifico'
                ),
              ),
              SizedBox(
                height: 100,
              ),
            // CustomCard2(
            //   product:product ,
            // ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, HomePage.id);
                },
                child: Container(
                  decoration: BoxDecoration(
                    color:  Color(0xff895737),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  width: double.infinity,
                  height: 60,
                  child: Center(
                      child: Text(
                    'Owner',
                    style: TextStyle(color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 30
                    ),
                  )),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, HomePage.id);
                },
                child: Container(
                  decoration: BoxDecoration(
                    color:  Color(0xff895737),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  width: double.infinity,
                  height: 60,
                  child: Center(
                      child: Text(
                    'Customer',
                    style: TextStyle(color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 30
                    ),
                  )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
