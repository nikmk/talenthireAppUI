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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:<Widget>[
                    Stack(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.fromLTRB(25.0, 25.0, 5.0, 6.0),
                        child: Text(
                          "You have ",
                          style: TextStyle(
                            color:Colors.grey,
                            fontWeight: FontWeight.w800,
                            fontSize: 14.0,

                          )
                        )
                      ),
                      Container(
                          padding: EdgeInsets.fromLTRB(25.0, 45.0, 5.0, 20.0),
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
                    ),
                    Container(
                      height:50.0,
                      width:125.0,
                      margin: EdgeInsets.only(right:20),
                      decoration: BoxDecoration(
                        color: Colors.greenAccent[100].withOpacity(0.5),
                        borderRadius: BorderRadius.circular(10.0)
                      ),
                      child: Center(
                        child: Text(
                          "Buy More",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.green[800]
                          ),
                        )
                      )
                    )
                  ]
                )
              )
            ],
          ),
          SizedBox(height:40.0),
          Container(
            padding: EdgeInsets.only(left:25.0,right:25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "MY COACHES",
                  style: TextStyle(
                    color:Colors.grey,
                    fontWeight: FontWeight.bold,
                    fontSize: 12.0
                  )
                ),
                Text(
                    "Past Sessions",
                    style: TextStyle(
                        color:Colors.green,
                        fontWeight: FontWeight.bold,
                        fontSize: 12.0
                    )
                ),
              ]
            )
          ),
          SizedBox(height:10.0),
          GridView.count(
            crossAxisCount: 2,
            primary: false,
            crossAxisSpacing: 2.0,
            mainAxisSpacing: 4.0,
            shrinkWrap: true,
            children: <Widget>[
            _buildCard('Github', 'Active', 1),
              _buildCard('Github', 'Away', 2),
              _buildCard('Github', 'Away', 3),
              _buildCard('Github', 'Active', 4),
              _buildCard('Github', 'Away', 5),
              _buildCard('Github', 'Active', 6),
            ],
          )
        ],
      )
    );
  }

  Widget _buildCard(String name , String status , int cardIndex) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
        elevation: 7.0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[

          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              SizedBox(height: 10.0),
              Stack(
                children:<Widget>[
                  Container(
                  height:80.0 ,
                  width: 80.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    color: Colors.green,
                    image: DecorationImage(
                      image: NetworkImage(
                        'https://github.githubassets.com/images/modules/logos_page/GitHub-Mark.png'
                      )
                    )
                  )
                ),
                  Container(
                    margin: EdgeInsets.only(left:55.0,top: 10),
                    height: 20.0,
                    width:20.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      border: Border.all(color:Colors.white,width: 2.0,
                      style: BorderStyle.solid
                      ),
                      color: status == 'Away' ? Colors.amber : Colors.green
                    ),

                  )
                  ]

              ),
              SizedBox(height: 20.0),
              Text(
                name ,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15.0,
                  color:Colors.black54
                )
              ),

              Text(
                  status ,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 12.0,
                      color:Colors.grey
                  )
              ),

            ],
          ),

          Container(

            child: Container(
              width: 175.0,
              height: 40.0,
              decoration: BoxDecoration(
                color: status == "Away" ? Colors.grey : Colors.green,
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10.0),bottomRight: Radius.circular(10.0))
              ),
              child: Center(
                child: Text(
                  'Request',
                  style: TextStyle(
                    color: Colors.white70,
                  )
                ),
              )
            )
          )
        ],
      ),
      margin: cardIndex.isEven? EdgeInsets.fromLTRB(10.0, 0.0, 25.0, 10.0) : EdgeInsets.fromLTRB(25.0, 0.0, 5.0, 10.0)
    );
  }

}


