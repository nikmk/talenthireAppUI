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

      body: ListView()
    );
  }
}
