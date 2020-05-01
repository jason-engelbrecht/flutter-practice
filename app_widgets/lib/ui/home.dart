import 'package:flutter/material.dart';

class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.only(top: 30.0, left: 10.0),
        color: Colors.deepOrangeAccent,
        child: Column(children: <Widget>[
          Row(children: <Widget>[
            Expanded(child: Text("Margherita",
                textDirection: TextDirection.ltr,
                style: TextStyle(
                    fontSize: 30.0,
                    decoration: TextDecoration.none,
                    fontFamily: 'Oxygen',
                    fontWeight: FontWeight.normal
                )
            )),
            Expanded(child: Text("Tomato, Mozzarella, Basil",
                textDirection: TextDirection.ltr,
                style: TextStyle(
                    fontSize: 20.0,
                    decoration: TextDecoration.none,
                    fontFamily: 'Oxygen',
                    fontWeight: FontWeight.normal
                )
            ))
          ],
          ),
          Row(children: <Widget>[
            Expanded(child: Text("Marinara",
                textDirection: TextDirection.ltr,
                style: TextStyle(
                    fontSize: 30.0,
                    decoration: TextDecoration.none,
                    fontFamily: 'Oxygen',
                    fontWeight: FontWeight.normal
                )
            )),
            Expanded(child: Text("Tomato, Garlic",
                textDirection: TextDirection.ltr,
                style: TextStyle(
                    fontSize: 20.0,
                    decoration: TextDecoration.none,
                    fontFamily: 'Oxygen',
                    fontWeight: FontWeight.normal
                )
            ))
          ],
          ),
          OrderButton()
        ])
      )
    );
  }
}

class OrderButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var button = Container(
      margin: EdgeInsets.only(top: 50.0),
      child: RaisedButton(
        child: Text("Order your pizza!"),
        color: Colors.lightGreen,
        elevation: 5.0,
        onPressed: () {
          order(context);
        },
      ),
    );
    return button;
  }

  void order(BuildContext context) {
    var alert = AlertDialog(
      title: Text("Order Completed"),
      content: Text("Thanks for your order"),
    );

    showDialog(
      context: context,
      builder: (BuildContext context) => alert
    );
  }

}

/*
* box constraints: inherits from parents (min/max width/height)
* margin/padding: EdgeInsets
* custom fonts can be added in pubspec.yaml
* expanded: expands to fit available space
* rows & columns very similar to html/css
* add assets (such as images) in pubspec
*
* */