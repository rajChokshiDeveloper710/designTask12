import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'design2.dart';

void main(){
  runApp(MaterialApp(
    title: "FirstApp",
    home: MyApp(),
  ));
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Design 1",
          textAlign: TextAlign.center,
        ),
      ),
      body: TaskOne(),
      floatingActionButton: FloatingActionButton(

        // This button will redirect to design2.dart

        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Design()));
        },
        child: Icon(Icons.navigate_next),
      ),
    );
  }
}

class TaskOne extends StatelessWidget {
  const TaskOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
       child: Column(
          children: [
            Container(

              // This is Main container that holds BOX 1 and BOX 2

              decoration: BoxDecoration(color: Colors.amberAccent),
              height: MediaQuery.of(context).size.height/2,
              width: MediaQuery.of(context).size.width,
              child: Row(
                children: [
                  Container(
                    //This is Box 1
                    child: Card(

                      //This is child of BOX1

                      margin: EdgeInsets.fromLTRB(50.0, 5.0, 50.0, 390.0),
                      color: Colors.blue,
                      child: Text(
                        "Child",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 40.0,

                        ),
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.deepOrange,
                    ),
                    width: MediaQuery.of(context).size.width/2,
                    height: MediaQuery.of(context).size.height,
                  ),
                  Container(

                    // This is BOX 2
                    decoration: BoxDecoration(
                      color: Colors.deepPurple,
                    ),
                    child: Card(

                      //This is child of BOX 2
                      margin: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 20.0),
                      color: Colors.green,
                      child: Text(
                        "Same Margin",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 40.0,

                        ),
                      ),
                    ),
                    width: MediaQuery.of(context).size.width/2,
                    height: MediaQuery.of(context).size.height,
                  ),
                ],
              ),
            ),
            Container(

              //This is Main container that holds BOX 3 and BOX 4

              alignment: AlignmentDirectional.bottomCenter,
              height: MediaQuery.of(context).size.height/2,
              width: MediaQuery.of(context).size.width,
              child: Row(
                children: [
                  Container(

                    // This is Box 3

                    decoration: BoxDecoration(
                      color: Colors.greenAccent,
                    ),
                    child: Card(

                      // This is child of BOX 3

                      margin: EdgeInsets.fromLTRB(50.0, 390.0, 50.0, 5.0),
                      color: Colors.amber,
                      child: Text(
                        "Child",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 40.0,

                        ),
                      ),
                    ),
                    width: MediaQuery.of(context).size.width/2,
                    height: MediaQuery.of(context).size.height,
                  ),
                  Container(

                    // This is BOX 4

                    decoration: BoxDecoration(
                      color: Colors.red,
                    ),
                    child: Card(

                      //This is child of BOX 4
                      margin: EdgeInsets.fromLTRB(50.0, 200.0, 50.0, 200.0),
                      color: Colors.blue,
                      child: Text(
                        "Child",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 40.0,

                        ),
                      ),
                    ),
                    width: MediaQuery.of(context).size.width/2,
                    height: MediaQuery.of(context).size.height,
                  ),
                ],
              ),
            ),
          ],
        )
    );
  }
}

