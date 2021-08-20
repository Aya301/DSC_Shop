import 'package:flutter/material.dart';
import 'splash.dart';
import 'home.dart';

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: screen(),
    );
  }
}

class sign extends StatefulWidget {
  sign({Key key,this.title}):super(key: key);
  final String title;
  @override
  _signState createState()=> _signState();
}
class _sign extends StatefulWidget{
  @override
  _signState createState()=> _signState();
}

class _signState extends State<sign> {
  bool hide = true;
  GlobalKey<FormState> formkey=  GlobalKey<FormState>();

  void validate(){
    if(formkey.currentState.validate()){
      print("validated");
    }else{
      print("Not Validated");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Padding(padding: EdgeInsets.only(top: 50),),
              Container(
                height: 200,
                width: 350,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image:DecorationImage( image:  AssetImage('image/welcome.jpg',),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.only(top: 150),),
              Row(
                children: [
                  Padding(padding: EdgeInsets.only(left: 40)),
                  RaisedButton(
                    onPressed: (){
                      showDialog(context: context,
                        barrierDismissible: false,
                        builder: (context)
                        {
                          return  SingleChildScrollView(
                            child:AlertDialog(
                              title: Text('Log In',
                                style: TextStyle(fontSize: 20,
                                    fontWeight: FontWeight.bold),),
                              content: Container(
                                  height: 250,
                                  width: 280,
                                  child: Column(
                                    children: [
                                      Container(
                                        child: TextField(decoration: InputDecoration(
                                          icon: Icon(Icons.email_sharp,color: Colors.blue.shade900,),
                                          hintText: "Email",
                                          border: InputBorder.none,
                                        ),),
                                        margin: EdgeInsets.symmetric(vertical: 10),
                                        padding:EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                                        width: 350,
                                        height: 50,
                                        decoration: BoxDecoration(color: Colors.white,
                                          borderRadius: BorderRadius.circular(29),),
                                      ),
                                      Text('Required',style: TextStyle(color: Colors.blue.shade900,fontSize: 10),),
                                      Container(
                                        child: TextField(
                                          obscureText: hide,
                                          decoration: InputDecoration(
                                            icon: Icon(Icons.lock,color: Colors.blue.shade900),
                                            suffixIcon:InkWell(
                                              onTap: _passord,
                                              child: Icon(Icons.visibility,color:Colors.blue.shade900 ),
                                            ),
                                            hintText: "Password",
                                            border: InputBorder.none,
                                          ),
                                        ),
                                        margin: EdgeInsets.symmetric(vertical: 10),
                                        padding:EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                                        width: 350,
                                        height: 50,
                                        decoration: BoxDecoration(color: Colors.white,
                                          borderRadius: BorderRadius.circular(29),),
                                      ),
                                      Text('Required',style: TextStyle(color: Colors.blue.shade900,fontSize: 10),),
                                      RaisedButton(onPressed: (){
                                        Navigator.push(context, MaterialPageRoute(builder: (context)=>home(),),);}
                                        // validate
                                        , child: Text('Sign In',
                                          style: TextStyle(fontSize: 20,color: Colors.white),),
                                        color: Colors.blue.shade900,
                                      )
                                    ],
                                  )
                              ),
                            ),
                          );
                        },
                      );
                    },
                    child: Text('Log In',
                      style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Padding(padding: EdgeInsets.only(left: 20)),
                  RaisedButton(onPressed: (){
                    showDialog(context: context,
                      barrierDismissible: false,
                      builder: (context)
                      {
                        return SingleChildScrollView(
                          child: AlertDialog(
                            title: Text('Sign Up',
                              style: TextStyle(fontSize: 20,
                                  fontWeight: FontWeight.bold),),
                            content: Container(
                              height: 320,
                              width: 280,
                              child: Column(
                                children: [
                                  Container(
                                    child: TextFormField(decoration: InputDecoration(
                                      icon: Icon(Icons.person_pin,color: Colors.blue.shade900),
                                      hintText: "User Name",
                                      border: InputBorder.none,
                                    ),
                                      validator: (value){
                                        if(value.isEmpty){
                                          return 'Required';
                                        }else{
                                          return null;
                                        }
                                      },
                                    ),
                                    margin: EdgeInsets.symmetric(vertical: 10),
                                    padding:EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                                    width: 350,
                                    height: 50,
                                    decoration: BoxDecoration(color: Colors.white,
                                      borderRadius: BorderRadius.circular(29),),
                                  ),
                                  Text('Required',style: TextStyle(color: Colors.blue.shade900,fontSize: 10),),

                                  Container(
                                    child: TextField(decoration: InputDecoration(
                                      icon: Icon(Icons.email_sharp,color: Colors.blue.shade900,),
                                      hintText: "Email",
                                      border: InputBorder.none,
                                    ),),
                                    margin: EdgeInsets.symmetric(vertical: 10),
                                    padding:EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                                    width: 350,
                                    height: 50,
                                    decoration: BoxDecoration(color: Colors.white,
                                      borderRadius: BorderRadius.circular(29),),
                                  ),
                                  Text('Required',style: TextStyle(color: Colors.blue.shade900,fontSize: 10),),
                                  Container(
                                    child: TextField(
                                      obscureText: hide,
                                      decoration: InputDecoration(
                                        icon: Icon(Icons.lock,color: Colors.blue.shade900),
                                        suffixIcon:InkWell(
                                          onTap: _passord,
                                          child: Icon(Icons.visibility,color:Colors.blue.shade900 ),
                                        ),
                                        hintText: "Password",
                                        border: InputBorder.none,
                                      ),
                                    ),
                                    margin: EdgeInsets.symmetric(vertical: 10),
                                    padding:EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                                    width: 350,
                                    height: 50,
                                    decoration: BoxDecoration(color: Colors.white,
                                      borderRadius: BorderRadius.circular(29),),
                                  ),
                                  Text('Required',style: TextStyle(color: Colors.blue.shade900,fontSize: 10),),
                                  RaisedButton(onPressed: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>home(),),);}
                                    // validate
                                    , child: Text('Sign In',
                                      style: TextStyle(fontSize: 20,color: Colors.white),),
                                    color: Colors.blue.shade900,
                                  ),
                                ],
                              ),

                            ),
                          ),
                        );
                      },
                    );
                  },
                    child: Text('Sign Up',
                      style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.blue.shade900,
    );
  }
  void _passord(){
    setState(() {
      hide = !hide;
    });
  }
}

