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
    if (MediaQuery.of(context).orientation == Orientation.portrait) {
      return portrait();
    } else {
      return landscape();
    }
  }
}

final headText = Text(
  'Strawberry Pavlova',
  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
);
final paraText = Text(
  'Pavlova is a meringue-based dessert named after the Russian ballerina Anna Pavlova.'
  ' It is a meringue dessert with a crisp crust and soft, light inside,'
  ' usually topped with fruit and whipped cream.',
  textAlign: TextAlign.center,
);

Widget landscape() {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.stretch, // this I missed till now
    children: <Widget>[
      Expanded(
        flex: 3,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                headText,
                paraText,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Wrap(
                      children: <Widget>[
                        StarIconsRow(),
                        SizedBox(
                          width: 5,
                        ),
                        Text('170 reviews'),
                      ],
                    ),
                  ],
                ),
                ReusableRow(),
              ],
            ),
          ),
        ),
      ),
      Expanded(
          flex: 7,
          child: Image(
            image: AssetImage('assets/Strawpav.jpg'),
            fit: BoxFit.fitHeight,
          )),
    ],
  );
}

Widget portrait() {
  return Column(
    children: <Widget>[
      Expanded(
          flex: 3,
          child: Image(
            image: AssetImage('assets/Strawpav.jpg'),
            fit: BoxFit.fitHeight,
          )),
      Expanded(
        flex: 4,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              headText,
              paraText,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Wrap(
                    children: <Widget>[
                      StarIconsRow(),
                      SizedBox(
                        width: 10,
                      ),
                      Text('170 reviews'),
                    ],
                  ),
                ],
              ),
              ReusableRow(),
            ],
          ),
        ),
      )
    ],
  );
}

class StarIconsRow extends StatelessWidget {
  const StarIconsRow({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final starIcon = Icon(
      Icons.star,
      size: 15,
    );
    return Row(
      children: <Widget>[
        starIcon,
        starIcon,
        starIcon,
        starIcon,
        starIcon,
      ],
    );
  }
}

class ReusableColumn extends StatelessWidget {
  final text;
  final time;

  ReusableColumn(this.text, this.time);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Icon(Icons.timer, size: 20, color: Colors.green),
        SizedBox(
          height: 5,
        ),
        Text(
          text,
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          time,
        )
      ],
    );
  }
}

class ReusableRow extends StatelessWidget {
  const ReusableRow({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        ReusableColumn('COOK', '25 min'),
        ReusableColumn('PREP', '1 hr'),
        ReusableColumn('FEEDS', '4-6'),
      ],
    );
  }
}
