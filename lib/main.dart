import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('Strawberry Pavlova'),
      ),
      body: Row(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Center(
                      child: Text('Strawberry Pavlova',style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),),
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text('Pavlova is a meringue-based dessert named after the Russian ballerina Anna Pavlova. It is a meringue dessert with a crisp crust and soft, light inside, usually topped with fruit and whipped cream.',
                        style: TextStyle(
                          fontSize: 10,
                        ),),
                    ),
                  ),
                  Expanded(
                    flex:1,
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Row(
                                children: <Widget>[
                                  Icon(Icons.star,size:12,),
                                  Icon(Icons.star,size:12,),
                                  Icon(Icons.star,size:12,),
                                  Icon(Icons.star,size:12,),
                                  Icon(Icons.star,size:12,),
                                ],
                              ),
                            ),
                          ),
                          Expanded(child: Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Text('170 reviews',
                              style: TextStyle(
                                fontSize: 10,
                              ),),
                          )),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(Icons.book,size:10,color: Colors.green,),
                              SizedBox(height: 6,),
                              Text('PREP:',
                              style: TextStyle(
                                fontSize: 10,
                              ),),
                              SizedBox(height: 12,),
                              Text('25 min.',
                                style: TextStyle(
                                  fontSize: 10,
                                ),),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(Icons.timer,size:10,color: Colors.green),
                              SizedBox(height: 6,),
                              Text('COOK:',
                                style: TextStyle(
                                  fontSize: 10,
                                ),),
                              SizedBox(height: 12,),
                              Text('1 hr',
                                style: TextStyle(
                                  fontSize: 10,
                                ),),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(Icons.restaurant,size:10,color: Colors.green),
                              SizedBox(height: 6,),
                              Text('FEEDS:',
                                style: TextStyle(
                                  fontSize: 10,
                                ),),
                              SizedBox(height: 12,),
                              Text('4-6 hr',
                                style: TextStyle(
                                  fontSize: 10,
                                ),),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
              flex: 2,
              child: Image(image:AssetImage('assets/Strawpav.jpg'))),
        ],
      ),
    ),
  ));
}
