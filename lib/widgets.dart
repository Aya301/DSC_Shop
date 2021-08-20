import 'package:flutter/material.dart';
import 'home.dart';

class suit  extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('DSC Shop',style: TextStyle(fontSize: 20),),
        backgroundColor: Colors.blue.shade900,
      ),
      body: ListView(
        children: [
          Padding(padding: EdgeInsets.only(top: 20,left: 20)),
          Container(
            height: 230,
            width: 250,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image:DecorationImage( image:  AssetImage('image/1.jpg',),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 20,left: 1)),
          Row(
            children: [
              Text('Suit Shirt',
                style: TextStyle(fontSize: 40),),
              SizedBox(width: 150),
              IconButton(icon:Icon( Icons.favorite),onPressed: (){}),
            ],
          ),
          Padding(padding: EdgeInsets.only(left: 20)),
          Text('70E',
            style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
          SizedBox(
            height: 100,
          ),
          RaisedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(
              builder: (context)=> home(),),);
          },
            child: Text('Add To Cart',
              style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
            color: Colors.blue.shade900,),
        ],
      ),
    );
  }
}


class blouse  extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('DSC Shop',style: TextStyle(fontSize: 20),),
        backgroundColor: Colors.blue.shade900,
      ),
      body: ListView(
        children: [
          Padding(padding: EdgeInsets.only(top: 20,left: 20)),
          Container(
            height: 230,
            width: 250,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image:DecorationImage( image:  AssetImage('image/2.jpg',),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 20,left: 1)),
          Row(
            children: [
              Text('Blouse',
                style: TextStyle(fontSize: 40),),
              SizedBox(width: 190),
              IconButton(icon:Icon( Icons.favorite),onPressed: (){}),
            ],
          ),
          Padding(padding: EdgeInsets.only(left: 50)),
          Text('100E',
            style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
          SizedBox(
            height: 100,
          ),
          RaisedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(
              builder: (context)=> home(),),);
          },
            child: Text('Add To Cart',
              style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
            color: Colors.blue.shade900,),
        ],
      ),
    );
  }
}

class dress  extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('DSC Shop',style: TextStyle(fontSize: 20),),
        backgroundColor: Colors.blue.shade900,
      ),
      body: ListView(
        children: [
          Padding(padding: EdgeInsets.only(top: 20,left: 20)),
          Container(
            height: 230,
            width: 250,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image:DecorationImage( image:  AssetImage('image/3.jpg',),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 20,left: 1)),
          Row(
            children: [
              Text('Dress',
                style: TextStyle(fontSize: 40),),
              SizedBox(width: 210),
              IconButton(icon:Icon( Icons.favorite),onPressed: (){}),
            ],
          ),
          Padding(padding: EdgeInsets.only(left: 20)),
          Text('200E',
            style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
          SizedBox(
            height: 100,
          ),
          RaisedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(
              builder: (context)=> home(),),);
          },
            child: Text('Add To Cart',
              style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
            color: Colors.blue.shade900,),
        ],
      ),
    );
  }
}

class children  extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('DSC Shop',style: TextStyle(fontSize: 20),),
        backgroundColor: Colors.blue.shade900,
      ),
      body: ListView(
        children: [
          Padding(padding: EdgeInsets.only(top: 20,left: 20)),
          Container(
            height: 230,
            width: 250,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image:DecorationImage( image:  AssetImage('image/4.jpg',),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 20,left: 1)),
          Row(
            children: [
              Text('Children Clothes',
                style: TextStyle(fontSize: 40),),
              SizedBox(width: 15),
              IconButton(icon:Icon( Icons.favorite),onPressed: (){}),
            ],
          ),
          Padding(padding: EdgeInsets.only(left: 20)),
          Text('250E',
            style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
          SizedBox(
            height: 100,
          ),
          RaisedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(
              builder: (context)=> home(),),);
          },
            child: Text('Add To Cart',
              style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
            color: Colors.blue.shade900,),
        ],
      ),
    );
  }
}

class Tshirt  extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('DSC Shop',style: TextStyle(fontSize: 20),),
        backgroundColor: Colors.blue.shade900,
      ),
      body: ListView(
        children: [
          Padding(padding: EdgeInsets.only(top: 20,left: 20)),
          Container(
            height: 230,
            width: 250,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image:DecorationImage( image:  AssetImage('image/5.jpg',),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 20,left: 1)),
          Row(
            children: [
              Text('T-Shirt',
                style: TextStyle(fontSize: 40),),
              SizedBox(width: 180),
              IconButton(icon:Icon( Icons.favorite),onPressed: (){}),
            ],
          ),
          Padding(padding: EdgeInsets.only(left: 20)),
          Text('150E',
            style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
          SizedBox(
            height: 100,
          ),
          RaisedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(
              builder: (context)=> home(),),);
          },
            child: Text('Add To Cart',
              style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
            color: Colors.blue.shade900,),
        ],
      ),
    );
  }
}

class baby  extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('DSC Shop',style: TextStyle(fontSize: 20),),
        backgroundColor: Colors.blue.shade900,
      ),
      body: ListView(
        children: [
          Padding(padding: EdgeInsets.only(top: 20,left: 20)),
          Container(
            height: 230,
            width: 250,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image:DecorationImage( image:  AssetImage('image/6.jpg',),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 20,left: 1)),
          Row(
            children: [
              Text('Baby Dress',
                style: TextStyle(fontSize: 40),),
              SizedBox(width: 110),
              IconButton(icon:Icon( Icons.favorite),onPressed: (){}),
            ],
          ),
          Padding(padding: EdgeInsets.only(left: 20)),
          Text('250E',
            style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
          SizedBox(
            height: 100,
          ),
          RaisedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(
              builder: (context)=> home(),),);
          },
            child: Text('Add To Cart',
              style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
            color: Colors.blue.shade900,),
        ],
      ),
    );
  }
}
