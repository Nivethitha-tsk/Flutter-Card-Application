import 'package:flutter/material.dart';

/*
3.flutter build apk
1.set environment variable - ANDRIOD_HOME
2.cmd adb
*/
void main() {
 runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  Widget _grayarea(BuildContext context){
      return Container(
        height: 30,
        color: Colors.grey,
        margin: EdgeInsets.all(20),
      );
  }


  Widget _redcard(BuildContext context,Height,bool Flag){
    return Container(
						height: Height,
						child: Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
              color: Colors.red,
              elevation: 10,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                 Flag?Row(
                    children:<Widget>[
                        Container(
                          width: 200,
                          height: 40.0,
                          color: Colors.green,
                          margin: EdgeInsets.all(20),
                          )
                    ]
                  ):SizedBox(
                    height: 25,
                  ),
                  SizedBox(
                    height: 5,
                  ),

                  _grayarea(context)
                ],
              ),
            ),
    );
              
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
	home: Scaffold(
		appBar: AppBar(
			title: Text('Flutter Card Application'),
			backgroundColor: Colors.greenAccent[400],
			//IconButton
			), //AppBar
		body: Center(
		child: SingleChildScrollView(child: 
    Container(
			child: Column(
			children: <Widget>[
				Row(
				children: <Widget>[
					Flexible(
					flex: 1,
					fit: FlexFit.tight,
					child: _redcard(context,175,true)
					//Container
					), //Flexible
					
				], //<Widget>[]
				mainAxisAlignment: MainAxisAlignment.center,
				), //Row
        SizedBox(
          height: 35,
        ),
        Stack(
          alignment: Alignment.topCenter,
          clipBehavior: Clip.none,
          children: [
            _redcard(context,150,false),
          Positioned(
            top: -20,
            child: 
            Container(
					width: 200,
					height: 40,
					decoration: BoxDecoration(
						color: Colors.green), //BoxDecoration
				),
            )  
          ],
        )
	
      
				
			], //<Widget>[]

			crossAxisAlignment: CrossAxisAlignment.center,
			), //Column
		 //Padding
			),
    
    
    
    ),
    
     //Container
		) //Center
		), //Scaffold

	debugShowCheckedModeBanner: false,

  
);

  }
}


