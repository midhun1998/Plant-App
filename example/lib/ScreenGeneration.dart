
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';
import 'Cards.dart';
import 'data.dart';


class ScreenGeneration extends StatefulWidget {
  @override
  _ScreenGenerationState createState() => _ScreenGenerationState();
}

class _ScreenGenerationState extends State<ScreenGeneration> {

  var isLoading = false;
  DataModelApi dataModelApi;


  _fetchData() async{  //Async function which handels Json parsing
    setState(() {
      isLoading = true;
    });
    final response =
    await http.get('https://api.thingspeak.com/channels/632047/feeds.json?api_key=4RHC9RUU7PA4X3D8&results=1');

    if (response.statusCode == 200) {
      // If server returns an OK response, parse the JSON.

      dataModelApi =  DataModelApi.fromJson(json.decode(response.body));
      print("Successfully fetched and parsed Sensor Data");

      //Temperature

      if(double.parse(dataModelApi.feeds[0].field3).toInt() >= 18 && double.parse(dataModelApi.feeds[0].field3).toInt()<24){
        var str = {
          'icon' : 'assets/temperature.png' ,
          'name' : 'Temperature',
          'value' : '${double.parse(dataModelApi.feeds[0].field3).toInt()}°C',
          'subText' : 'Normal',
          'color' : '${normalTemp}',
          'subColor': '${normalText}',
        };
        coins.add(str);
      } else if(double.parse(dataModelApi.feeds[0].field3).toInt() >= 24 && double.parse(dataModelApi.feeds[0].field3).toInt()<=28){
        var str = {
          'icon' : 'assets/temperature.png' ,
          'name' : 'Temperature',
          'value' : '${double.parse(dataModelApi.feeds[0].field3).toInt()}°C',
          'subText' : 'Moderate',
          'color' : '${moderateTemp}',
          'subColor': '${moderateText}',
        };
        coins.add(str);
      } else if(double.parse(dataModelApi.feeds[0].field3).toInt() > 28){
        var str = {
          'icon' : 'assets/temperature.png' ,
          'name' : 'Temperature',
          'value' : '${double.parse(dataModelApi.feeds[0].field3).toInt()}°C',
          'subText' : 'Critical',
          'color' : '${highTemp}',
          'subColor': '${highText}',
        };
        coins.add(str);      }

      //Humidity

      if(double.parse(dataModelApi.feeds[0].field2).toInt() >= 50 && double.parse(dataModelApi.feeds[0].field2).toInt()<71){
        var str = {
          'icon' : 'assets/humidity.png' ,
          'name' : 'Humidity',
          'value' : '${double.parse(dataModelApi.feeds[0].field2).toInt()}',
          'subText' : 'Normal',
          'color' : '${lightBlueHumidity}',
          'subColor': '${normalText}',
        };
        coins.add(str);
      } else if(double.parse(dataModelApi.feeds[0].field2).toInt() < 50){
        var str = {
          'icon' : 'assets/humidity.png' ,
          'name' : 'Humidity',
          'value' : '${double.parse(dataModelApi.feeds[0].field2).toInt()}',
          'subText' : 'low',
          'color' : '${lightBlueHumidity}',
          'subColor': '${moderateText}',
        };
        coins.add(str);
      } else if(double.parse(dataModelApi.feeds[0].field2).toInt() > 70){
        var str = {
          'icon' : 'assets/humidity.png' ,
          'name' : 'Humidity',
          'value' : '${double.parse(dataModelApi.feeds[0].field2).toInt()}',
          'subText' : 'High',
          'color' : '${lightBlueHumidity}',
          'subColor': '${highText}',
        };
        coins.add(str);
      }

      //Moisture

      if(double.parse(dataModelApi.feeds[0].field1).toInt() >= 90 && double.parse(dataModelApi.feeds[0].field1).toInt()<=100){
        var str = {
          'icon' : 'assets/drip.png' ,
          'name' : 'Moisture',
          'value' : '${double.parse(dataModelApi.feeds[0].field1).toInt()}%',
          'subText' : 'No Irrigation Required',
          'color' : '${darkBlueMoisture}',
          'subColor': '${normalText}',
        };
        coins.add(str);
      } else if(double.parse(dataModelApi.feeds[0].field1).toInt() >= 80 && double.parse(dataModelApi.feeds[0].field1).toInt()<90){
        var str = {
          'icon' : 'assets/drip.png' ,
          'name' : 'Moisture',
          'value' : '${double.parse(dataModelApi.feeds[0].field1).toInt()}%',
          'subText' : 'Irrigation to Be Applied',
          'color' : '${darkBlueMoisture}',
          'subColor': '${moderateText}',
        };
        coins.add(str);
      } else if(double.parse(dataModelApi.feeds[0].field1).toInt() < 80){
        var str = {
          'icon' : 'assets/drip.png' ,
          'name' : 'Moisture',
          'value' : '${double.parse(dataModelApi.feeds[0].field1).toInt()}%',
          'subText' : 'Critically Low Soil Moisture',
          'color' : '${darkBlueMoisture}',
          'subColor': '${highText}',
        };
        coins.add(str);
      }
      setState(() {
        isLoading = false;
      });
    } else {
      // If that response was not OK, throw an error.
      throw Exception('Failed to load Sensor Data');
    }
  }

@override
  void initState() {
    // TODO: implement initState
  _fetchData();
  super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: isLoading
        ? Center(
        child: CircularProgressIndicator(),
      )
        :ListView.builder(

        physics: NeverScrollableScrollPhysics(),
        primary: false,
        itemCount: coins.length,
        itemBuilder: (BuildContext context, int index) {
          Map coin = coins[index];

          return Cards(
            name: coin['name'],
            icon: coin['icon'],
            value: coin['value'],
            color: coin['color'],
            subColor: coin['subColor'],
            subText: coin['subText'],
          );
        },
      ),
    );
  }
}

