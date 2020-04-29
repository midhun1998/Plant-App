import 'dart:math';

import 'package:flutter/material.dart';


class Cards extends StatefulWidget {
  final String name;
  final String icon;
  final String value;
  final String subText;
  final String color;
  final String subColor;
  Cards({
    Key key,
    this.name, this.icon, this.value, this.subText, this.color, this.subColor
  }) : super(key: key);


  @override
  _CardsState createState() => _CardsState();
}

class _CardsState extends State<Cards> {

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Column(

        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[

                Row(
                  children: <Widget>[
                    Image.asset(
                      "${widget.icon}",
                      height: 25,
                      width: 25,
                    ),
                    SizedBox(width: 10),
                    Text(
                      "${widget.name}",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),

                Text(
                  "${widget.subText}",
                  style: TextStyle(
                    fontSize: 12,
                    color: new Color(int.parse(widget.subColor)),
                  ),
                ),
//
              ],
            ),
          ),

//          Padding(
//            padding: EdgeInsets.fromLTRB(20, 0, 20, 5),
//            child: Row(
//              mainAxisSize: MainAxisSize.max,
//              mainAxisAlignment: MainAxisAlignment.spaceBetween,
//              children: <Widget>[
//
//                Text(" "),
//
//                Text(
//                  r"Updated",
//                  style: TextStyle(
//                    fontSize: 12,
//                    color: Colors.green[400],
//                  ),
//                ),
//              ],
//            ),
//          ),
//

          Container(
            width: MediaQuery.of(context).size.width,
            height: 150,
            child: Text(
              "${widget.value}",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: new Color(int.parse(widget.color)) ,
                fontSize: 100,
                fontWeight: FontWeight.w200,
              ),
            ),
//            charts.LineChart(
//              <charts.Series<LinearToken, int>>[
//                charts.Series<LinearToken, int>(
//                  id: '${widget.name}',
//                  colorFn: (_, __) => widget.color,
//                  domainFn: (LinearToken sales, _) => sales.day,
//                  measureFn: (LinearToken sales, _) => sales.value,
//                  data: data,
//                )
//              ],
//              defaultRenderer: charts.LineRendererConfig(
//                includeArea: true,
//                stacked: true,
//              ),
//              animate: false,
//              primaryMeasureAxis: charts.NumericAxisSpec(
//                renderSpec: charts.NoneRenderSpec(),
//              ),
//              domainAxis: charts.NumericAxisSpec(
////                showAxisLine: true,
//                renderSpec: charts.NoneRenderSpec(),
//              ),
//            ),
          ),


        ],
      ),
    );
  }
}
class LinearToken {
  final int day;
  final int value;

  LinearToken(this.day, this.value);
}