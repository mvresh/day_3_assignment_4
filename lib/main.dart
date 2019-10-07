import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: RecipeOrientation(),
    ),
  ));
}

class RecipeOrientation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    if(MediaQuery.of(context).orientation == Orientation.portrait)
    {
      return portrait();
    }
    else {
      return landscape();
    };
  }
}

Widget landscape() {
  return new Row(
    crossAxisAlignment: CrossAxisAlignment.stretch, // this I missed till now
    children: <Widget>[
      Expanded(
        flex: 3,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(4, 6, 4, 6),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(height:20),
              Text('Strawberry Pavlova'),
              SizedBox(height:20),
              Text(
                'Pavlova is a meringue-based dessert named after the Russian ballerina Anna Pavlova.'
                    ' It is a meringue dessert with a crisp crust and soft, light inside,'
                    ' usually topped with fruit and whipped cream.',textAlign: TextAlign.center,),
              SizedBox(height:20),
              Wrap(
                children: <Widget>[
                  Icon(
                    Icons.star,
                    size: 12,
                  ),
                  Icon(
                    Icons.star,
                    size: 12,
                  ),
                  Icon(
                    Icons.star,
                    size: 12,
                  ),
                  Icon(
                    Icons.star,
                    size: 12,
                  ),
                  Icon(
                    Icons.star,
                    size: 12,
                  ),
                  Text('170 reviews'),
                ],
              ),
              SizedBox(height:20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Icon(Icons.timer, size: 10, color: Colors.green),
                      Text(
                        'COOK:',
                      ),
                      Text(
                        '1 hr',
                      )
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Icon(Icons.timer, size: 10, color: Colors.green),
                      Text(
                        'COOK:',
                      ),
                      Text(
                        '1 hr',
                      )
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Icon(Icons.timer, size: 10, color: Colors.green),
                      Text(
                        'COOK:',
                      ),
                      Text(
                        '1 hr',
                      )
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      Expanded(
          flex: 7,
          child: Image(image: AssetImage('assets/Strawpav.jpg'),fit: BoxFit.fitHeight,)),
    ],
  );
}

Widget portrait(){
  return new Column(
    children: <Widget>[
      Expanded(
          flex: 1,
          child: Image(image: AssetImage('assets/Strawpav.jpg'),fit: BoxFit.fitHeight,)),
      Expanded(
        flex: 1,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(4, 6, 4, 6),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(height:20),
              Text('Strawberry Pavlova'),
              SizedBox(height:20),
              Text(
                'Pavlova is a meringue-based dessert named after the Russian ballerina Anna Pavlova.'
                    ' It is a meringue dessert with a crisp crust and soft, light inside,'
                    ' usually topped with fruit and whipped cream.',textAlign: TextAlign.center,),
              SizedBox(height:20),
              Wrap(
                children: <Widget>[
                  Icon(
                    Icons.star,
                    size: 12,
                  ),
                  Icon(
                    Icons.star,
                    size: 12,
                  ),
                  Icon(
                    Icons.star,
                    size: 12,
                  ),
                  Icon(
                    Icons.star,
                    size: 12,
                  ),
                  Icon(
                    Icons.star,
                    size: 12,
                  ),
                  Text('170 reviews'),
                ],
              ),
              SizedBox(height:20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Icon(Icons.timer, size: 10, color: Colors.green),
                      Text(
                        'COOK:',
                      ),
                      Text(
                        '1 hr',
                      )
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Icon(Icons.timer, size: 10, color: Colors.green),
                      Text(
                        'COOK:',
                      ),
                      Text(
                        '1 hr',
                      )
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Icon(Icons.timer, size: 10, color: Colors.green),
                      Text(
                        'COOK:',
                      ),
                      Text(
                        '1 hr',
                      )
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      )
    ],
  );
}