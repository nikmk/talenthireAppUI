import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new MyHomePage()
    );
  }
}


class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new FlutterLogo(
          colors: Colors.green,
          size: 25.0
        ),
        elevation: 0.0,
        centerTitle:true ,
        backgroundColor: Colors.white,
        leading:IconButton(
            icon:Icon(Icons.arrow_back_ios,size:20.0),
            color:Colors.grey,
            onPressed: (){}),
        actions: <Widget>[
        IconButton(
          onPressed: (){},
          icon: Icon(Icons.menu),
          color: Colors.grey,
        )
        ],
      ),

      body: ListView(
        shrinkWrap: true ,
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                alignment: Alignment(0.0, -0.4),
                height:100.0,
                color: Colors.white,
                child: Text(
                  "Get coaching",
                  style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.w600),
                )
              ),
              Container(
                margin:EdgeInsets.fromLTRB(25.0, 90.0, 25.0, 0.0),
                decoration:BoxDecoration(
                  color: Colors.white ,
                  borderRadius: BorderRadius.circular(20.0),
                  boxShadow: [
                    BoxShadow(
                    blurRadius: 2.0,
                      color: Colors.grey
                  )]
                ),
                child:Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children:<Widget>[
                    Stack(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.fromLTRB(25.0, 25.0, 5.0, 6.0),
                        child: Text(
                          "You have",
                          style: TextStyle(
                            color:Colors.grey,
                            fontWeight: FontWeight.w800,
                            fontSize: 14.0,

                          )
                        )
                      ),
                      Container(
                          padding: EdgeInsets.fromLTRB(25.0, 40.0, 5.0, 25.0),
                          child: Text(
                              "206",
                              style: TextStyle(
                                color:Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 40.0,

                              )
                          )
                      )
                    ]
                    )
                  ]
                )
              )
            ],
          )
        ],
      )
    );
  }
}
