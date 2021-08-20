import 'package:flutter/material.dart';
import 'home.dart';
class about  extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DSC Shop', style: TextStyle(fontSize: 20),),
        backgroundColor: Colors.blue.shade900,
      ),
      body: SingleChildScrollView(
        child:Column(
          children: [
            Padding(padding: EdgeInsets.only(top: 10)),
            Container(
              height: 200,
              width: 250,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image:DecorationImage( image:  AssetImage('image/splash.jpg',),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 10)),
            Padding(padding: EdgeInsets.only(top: 20)),
            Container(
              padding: EdgeInsets.only(left:5,),
              width: 350,
              child:  Text('DESCRIPTION :',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
                  textDirection: TextDirection.ltr),
            ),
            Container(
              padding: EdgeInsets.only(left:15,top: 5),
              width: 350,
              child:  Text('DSC shop is a store for buying products and adding favorite products to the favorite screen and when choosing a specific product to buy it is added to the Shopping Cart Screen, and you can also delete the products that you do not want either from the favorite screen or purchases'
                  '    Another feature is the search for a specific product, in addition to converting the application language from Arabic to English.',
                  style: TextStyle(fontSize: 20), textDirection: TextDirection.ltr),
            ),
            Padding(padding: EdgeInsets.only(bottom: 20))
          ],
        ),
      ),
    );
  }
}