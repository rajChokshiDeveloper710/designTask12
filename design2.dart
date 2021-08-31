import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Design extends StatelessWidget {
  const Design({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Design 2",
      home: DesignExample(),
    );
  }
}

class DesignExample extends StatefulWidget {
  const DesignExample({Key? key}) : super(key: key);

  @override
  _DesignExampleState createState() => _DesignExampleState();
}

class _DesignExampleState extends State<DesignExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Design 2",textAlign: TextAlign.center,),
      ),
      body: SingleChildScrollView(
        // I  have used ScrollView to avoid pixel overflow

        child: Column(
          children: [
            Container(

              // This is Box 1

              height: MediaQuery.of(context).size.height/3,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(color: Colors.orange),

              child: Container(

                // This is Container that holds edittext and button.

                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                   Flexible(child:
                   TextFormField(

                     // Edit text

                     decoration: InputDecoration(
                       hintText: "Enter Search Text",
                       focusColor: Colors.white,
                       filled: true,
                       fillColor: Colors.white,
                       focusedBorder: OutlineInputBorder(
                         borderSide: BorderSide(color: Colors.greenAccent, width: 5.0),
                       ),
                       enabledBorder: OutlineInputBorder(
                         borderSide: BorderSide(color: Colors.pink, width: 5.0),
                       ),
                     ),
                   ),
                   ),
                    Flexible(

                      // Button

                        child: RaisedButton(
                          onPressed: () {  },
                          color: Colors.red,
                        child: Text(
                          "Button",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 50.0,
                          ),
                        ),

                        )

                    ),
                  ],
                )
              )
            ),
            Container(

              // This is Box 2

              height: MediaQuery.of(context).size.height/3,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(color: Colors.green),
              child: Column(
                children: [
                  Container(

                    //This container is for B1 and B2

                    height: MediaQuery.of(context).size.height/6,
                    width: MediaQuery.of(context).size.width,

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            // B1 Box

                            width: MediaQuery.of(context).size.width/4,
                            height: MediaQuery.of(context).size.height/8,
                            decoration: BoxDecoration(color: Colors.pink),
                            child: Text(
                              "B1",
                              style: TextStyle(
                                fontSize: 50,
                                color: Colors.white
                              ),
                            ),
                            alignment: Alignment.center,
                          ),
                        Container(
                          // B2 Box

                          width: MediaQuery.of(context).size.width/4,
                          height: MediaQuery.of(context).size.height/8,
                          decoration: BoxDecoration(color: Colors.pink),
                          child: Text(
                            "B2",
                            style: TextStyle(
                                fontSize: 50,
                                color: Colors.white
                            ),
                          ),
                          alignment: Alignment.center,
                        ),
                      ],
                    ),
                  ),
                  Container(

                    //This container is for B3 and B4

                    height: MediaQuery.of(context).size.height/6,
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          // B3 Box

                          width: MediaQuery.of(context).size.width/4,
                          height: MediaQuery.of(context).size.height/8,
                          decoration: BoxDecoration(color: Colors.pink),
                          child: Text(
                            "B3",
                            style: TextStyle(
                                fontSize: 50,
                                color: Colors.white
                            ),
                          ),
                          alignment: Alignment.center,
                        ),
                        Container(
                          // B4 Box

                          width: MediaQuery.of(context).size.width/4,
                          height: MediaQuery.of(context).size.height/8,
                          decoration: BoxDecoration(color: Colors.pink),
                          child: Text(
                            "B4",
                            style: TextStyle(
                                fontSize: 50,
                                color: Colors.white
                            ),
                          ),
                          alignment: Alignment.center,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(

              // This is Box 3

              height: MediaQuery.of(context).size.height/3,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(color: Colors.deepPurple),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width/4,
                    height: MediaQuery.of(context).size.height/8,
                    decoration: BoxDecoration(color: Colors.white),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width/4,
                    height: MediaQuery.of(context).size.height/8,
                    decoration: BoxDecoration(color: Colors.white),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width/4,
                    height: MediaQuery.of(context).size.height/8,
                    decoration: BoxDecoration(color: Colors.white),
                  ),
                ],
              ),
            ),
          ],
        ),
      )
    );
  }
}

