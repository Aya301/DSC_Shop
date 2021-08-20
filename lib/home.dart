import 'package:flutter/material.dart';
import 'sign.dart';
import 'widgets.dart';
import 'about.dart';

var n;

class home extends StatefulWidget {
  home({Key key,this.title}):super(key: key);
  final String title;
  @override
  _homeState createState()=> _homeState();
}
class _home extends StatefulWidget{
  @override
  _homeState createState()=> _homeState();
}

ThemeData _lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    colorScheme: ColorScheme.light(),
    accentColor: Colors.blue.shade900,
    brightness: Brightness.light,
    primaryColor: Colors.blue);

ThemeData _darkTheme = ThemeData(
    colorScheme: ColorScheme.dark(),
    scaffoldBackgroundColor: Colors.grey.shade800,
    accentColor: Colors.grey.shade800,
    brightness: Brightness.dark,
    primaryColor: Colors.amber
);

bool _light= true;


class _homeState extends State<home> {
  bool isSearching = false;
  int _currentIndex=0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: _light ? _lightTheme : _darkTheme,
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue.shade900,
          title: !isSearching ?Text('DSC Shop',
            style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),):
          TextField(decoration:InputDecoration(
            icon: Icon(Icons.search,color: Colors.white,),
            hintText: 'search here',
            hintStyle: TextStyle(color:Colors.white),
          ),),
          actions: [
            isSearching ?
            IconButton(icon: Icon(Icons.cancel),
                onPressed: (){
                  setState(() {
                    this.isSearching =!this.isSearching;
                  });
                }
            ):IconButton(icon: Icon(Icons.search),
                onPressed: (){
                  setState(() {
                    this.isSearching =!this.isSearching;
                  });
                })
          ],
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                decoration: BoxDecoration(color: Colors.blue.shade900),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      width: 80,
                      height: 80,
                      child: CircleAvatar(
                        backgroundImage: AssetImage('image/aya.jpg'),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Aya Mohamed', style: TextStyle(fontSize: 18,color: Colors.white),),
                    Text('ayamohamad301@gmail.com',
                      style: TextStyle(fontSize: 10,color: Colors.white),),
                  ],
                ),
              ),
              Padding(padding: EdgeInsets.only(left: 20,right: 50)),
              ListTile(
                leading: Icon(Icons.circle,color: Colors.blue.shade900,),
                title: Text('Dark Mode', style: TextStyle(fontSize: 18),),
              ),
              Switch(value: _light,
                  onChanged: (state){
                    setState(() {
                      _light = state;
                    });
                  }),
              ListTile(
                leading: Icon(Icons.language,color: Colors.blue.shade900,),
                title: Text('Language', style: TextStyle(fontSize: 18),),
              ),
              SizedBox(
                child:
                Text(
                  '                                    _______________________________________________________',
                  style: TextStyle(fontSize: 8, color: Colors.blue.shade900),),
              ),

              FlatButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(
                  builder: (context)=> about(),),);
              },
                child:  ListTile(
                  leading: Icon(Icons.account_box_outlined,color: Colors.blue.shade900,),
                  title: Text('About', style: TextStyle(fontSize: 18),),
                ),),
              SizedBox(
                child:
                Text(
                  '                                    _______________________________________________________',
                  style: TextStyle(fontSize: 8, color: Colors.blue.shade900),),
              ),
              SizedBox(
                height: 60,
              ),
              RaisedButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context)=> sign(),),);
                },
                child: Text('Sign Out',
                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
                color: Colors.blue.shade900,
              ),
            ],
          ),
        ),
        body: ListView(
          children: [
            Padding(padding: EdgeInsets.only(top: 20)),
            FlatButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(
                builder: (context)=> suit(),),);
            },
              child: Row(
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image:DecorationImage( image:  AssetImage('image/1.jpg',),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    children: [
                      Text('Suit shirt',
                        style: TextStyle(fontSize: 20),),
                      Text('70E',
                        style: TextStyle(fontSize: 20),),
                    ],
                  ),
                  SizedBox(
                    width: 84,
                  ),
                  IconButton(icon:Icon( Icons.favorite),
                      onPressed: (){

                      })
                ],
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 20)),
            FlatButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(
                builder: (context)=> blouse(),),);
            },
              child: Row(
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image:DecorationImage( image:  AssetImage('image/2.jpg',),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    children: [
                      Text('Blouse',
                        style: TextStyle(fontSize: 20),),
                      Text('100E',
                        style: TextStyle(fontSize: 20),),
                    ],
                  ),
                  SizedBox(
                    width: 103,
                  ),
                  IconButton(icon:Icon( Icons.favorite),
                      onPressed: (){
                        setState(() {
                          n = 1;
                        });
                      })
                ],
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 20)),
            FlatButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(
                builder: (context)=> dress(),),);
            },
              child:   Row(
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image:DecorationImage( image:  AssetImage('image/3.jpg',),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    children: [
                      Text('Dress',
                        style: TextStyle(fontSize: 20),),
                      Text('200E',
                        style: TextStyle(fontSize: 20),),
                    ],
                  ),
                  SizedBox(
                    width: 113,
                  ),
                  IconButton(icon:Icon( Icons.favorite),
                      onPressed: (){
                        setState(() {
                          n = 1;
                        });
                      })
                ],
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 20)),
            FlatButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(
                builder: (context)=> children(),),);
            },
              child:   Row(
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image:DecorationImage( image:  AssetImage('image/4.jpg',),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    children: [
                      Text('Children Clothes',
                        style: TextStyle(fontSize: 20),),
                      Text('250E',
                        style: TextStyle(fontSize: 20),),
                    ],
                  ),
                  SizedBox(
                    width: 17,
                  ),
                  IconButton(icon:Icon( Icons.favorite),
                      onPressed: (){
                        setState(() {
                          n = 1;
                        });
                      })
                ],
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 20)),
            FlatButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(
                builder: (context)=> Tshirt(),),);
            },
              child:  Row(
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image:DecorationImage( image:  AssetImage('image/5.jpg',),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    children: [
                      Text('T-shirt',
                        style: TextStyle(fontSize: 20),),
                      Text('150E',
                        style: TextStyle(fontSize: 20),),
                    ],
                  ),
                  SizedBox(
                    width: 108,
                  ),
                  IconButton(icon:Icon( Icons.favorite),
                      onPressed: (){
                        setState(() {
                          n = 1;
                        });
                      })
                ],
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 20)),
            FlatButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(
                builder: (context)=> baby(),),);
            },
              child:    Row(
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image:DecorationImage( image:  AssetImage('image/6.jpg',),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    children: [
                      Text('Baby Dress',
                        style: TextStyle(fontSize: 20),),
                      Text('250E',
                        style: TextStyle(fontSize: 20),),
                    ],
                  ),
                  SizedBox(
                    width: 64,
                  ),
                  IconButton(icon:Icon( Icons.favorite),
                      onPressed: (){
                        setState(() {
                          n = 1;
                        });
                      })
                ],
              ),
            ),
            Padding(padding: EdgeInsets.only(bottom: 20)),
          ],
        ),

        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home), title: Text('Home'),),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite), title: Text('Favorite'),),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag), title: Text('Shopping Cart'),),
          ],
          onTap: (x) {
            if (x == 0) {
              setState(() {
                n = 0;
              });
            }
            if (x == 1) {
              setState(() {
                n = 1;
              });
            }
            if (x == 2) {
              setState(() {
                n = 2;
              });
            }
            setState(() {
              _currentIndex = x;
            });
          },
          fixedColor: Colors.white,
          backgroundColor: Colors.blue.shade900,
        ),
        backgroundColor: Colors.white,
      ),
    );
  }
}