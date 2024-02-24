import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:store_app/screens/home_page.dart';
import 'package:store_app/screens/sec_start_page.dart';

class SrartPage extends StatelessWidget {
  const SrartPage({super.key});
  static String id = 'start page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffede0d4),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 50,
              ),
              AnimatedTextKit(animatedTexts: [
                TypewriterAnimatedText(
                  'Welcome To',
                  textStyle:
                      TextStyle(fontSize: 50, fontWeight: FontWeight.bold,  fontFamily: 'Pacifico',
                      color: Color(0xff895737)),
                ),
                TypewriterAnimatedText('My Store',
                    textStyle:
                        TextStyle(fontSize: 50, fontWeight: FontWeight.bold,
                        fontFamily: 'Pacifico',color: Color(0xff895737))),
              ]),
              const SizedBox(
                height: 200,
              ),
              Container(
                width: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.transparent),
                child: IconButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (BuildContext) {
                      return SecStartPage();
                    }));
                  },
                  icon: const Icon(
                    Icons.arrow_forward,
                    size: 50,
                    color:Color(0xff895737),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
