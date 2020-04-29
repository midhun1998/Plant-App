import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
class CornGrayLeaf extends StatefulWidget {
  CornGrayLeaf({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _CornGrayLeafState createState() => _CornGrayLeafState();
}

class _CornGrayLeafState extends State<CornGrayLeaf> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
          children: <Widget>[
            Stack(
              children: <Widget>[
                SizedBox(
                    height: 300.0,
                    child: Stack(
                      children: <Widget>[
                        Carousel(
                          images: [
                            AssetImage('assets/7.png'),
                            // Photo from https://unsplash.com/photos/2d4lAQAlbDA
                            AssetImage('assets/8.jpg'),
                            // Photo from https://unsplash.com/photos/FqqiAvJejto
                            AssetImage('assets/9.jpg'),
                            // Photo from https://unsplash.com/photos/_-JR5TxKNSo

                          ],
                          dotSize: 4.0,
                          dotSpacing: 15.0,
                          autoplay: false,
                          dotColor: Colors.white,
                          indicatorBgPadding: 50.0,
                          dotBgColor: Colors.transparent,
                          borderRadius: false,
                          moveIndicatorFromBottom: 200.0,
                          noRadiusForIndicator: true,
                        ),
                      ],
                    )),
                Padding(
                  padding: EdgeInsets.only(top: 270, left: 20, right: 20),
                  child: Container(
                      height: 100.0,
                      width: MediaQuery.of(context).size.width - 24.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 2.0,
                                color: Colors.grey.withOpacity(0.3),
                                spreadRadius: 2.0)
                          ]),
                      child: Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Corn Gray Leaf',
                              style: new TextStyle(
                                fontFamily: "VT323",
                                fontWeight: FontWeight.bold,
                                fontSize: 22.0,),

                            ),
                            Text('Cercospora zea-maydis', style: new TextStyle(fontSize: 15.0,),),

                          ],
                        ),
                      )),
                ),
                AppBar(
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 60, bottom: 20, left: 14,right: 14),
              child: Text('SYMPTOMS',
                style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'ConcertOne-Regular'),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20, bottom: 20, left: 14,right: 14),
              child: Text(' All corn hybrids and inbreds are susceptible to Gray Leaf Spot (GLS). In minimum tillage fields with a history of GLS, symptoms can occur on the lower leaves prior to tasseling. Immature GLS lesions can be easily confused with lesions caused by other pathogens; e.g., eyespot (Kabatiella), anthracnose (Colletrichum). Mature lesions on leaves are rectangular in shape and restricted by leaf veins; reverse lighting reveals a yellow halo on most hybrids. Mature lesions are diagnostic and easily distinguishable from other diseases. As lesions expand they coalesce resulting in a blighting of large portions of the leaf. When the source of primary innoculum is within the field, symptoms originate on the lower leaves and progress up the plant as infection cycles occur. When severe, the entire plant may be blighted. Stalk infections have been reported and can result in lodging if severe. Lesions on sheath or husk tissues may be be oval to ellipsoidal in shape and are not usually diagnostic. Severely affected fields can appear to be experiencing early dry-down. The time from infection to the production of more innoculum can be 14-21 days on a susceptible hybrid and 21-28 days on a tolerant hybrid. .', style: TextStyle(
                  fontSize: 17,
                  fontFamily: 'Raleway'),textAlign: TextAlign.justify,),
            ),
            Padding(
              padding: EdgeInsets.only(top: 40, bottom: 20, left: 14,right: 14),
              child: Text(
                'FAVORABLE ENVIRONMENT CONDITIONS',
                style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'ConcertOne-Regular'),
              ),
            ),

            Padding(
              padding: EdgeInsets.only(top: 20, bottom: 20, left: 14,right: 14),
              child: Text(' Temperature: 70°-90° F/25°-32° C, Relative Humidity: >12 hours @ > 90% RH, and Leaf Wetness: >12 hours of leaf wetness (from dew, rain, or irrigation)..',
                textAlign: TextAlign.justify,style: TextStyle(
                    fontSize: 17,
                    fontFamily: 'Raleway'),
              ),

            ),
            Padding(
              padding: EdgeInsets.only(top: 20, bottom: 20, left: 14, right: 14),
              child: Image.asset('assets/CornGreyDiseaseCycle.png'),

            ),
            Padding(
              padding: EdgeInsets.only(top: 40, bottom: 20, left: 14,right: 14),
              child: Text(
                'MANAGEMENT (REMEDIES)',
                style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'ConcertOne-Regular'),
              ),

            ),
            Padding(
              padding: EdgeInsets.only(top: 20, bottom: 20, left: 14,right: 14),
              child: Text('In order to best prevent and manage corn grey leaf spot, the overall approach is to reduce the rate of disease growth and expansion. This is done by limiting the amount of secondary disease cycles and protecting leaf area from damage until after corn grain formation. High risks for corn grey leaf spot are divided into eight factors, which require specific management strategies. \n\n1. Susceptible hybrid.\n\n2.Continuous corn.\n\n3.Late planting date.\n\n4.Minimum tillage systems .\n\n5.Field history of severe disease.\n\n6.Early disease activity (before tasseling.\n\n7.rrigation and Favorable weather forecast for disease. \n\n There are currently three different management strategies, some of which are more effective than others.\n\n1.Resistant varieties: In places where leaf spot occur, these crops can ultimately grow and still be resistant to the disease. Although the disease is not completely eliminated and resistant varieties show disease symptoms, at the end of the growing season, the disease is not as effective in reducing crop yield\n\n2.Crop rotation: The amount of initial inoculum will be reduced when a crop other than corn is planted for ≥2 years in that given area; meanwhile proper tillage methods are carried out\n\n3.Residue management: Burying the debris under the last year’s crop will help in reducing the presence of Cercospera zeae-maydis, as the fungal-infected debris can only survive above the soil surface.',
                textAlign: TextAlign.justify,style: TextStyle(
                    fontSize: 17,
                    fontFamily: 'Raleway'),
              ),

            ),

            Padding(
              padding: EdgeInsets.only(top: 40, bottom: 20, left: 14,right: 14),
              child: Text(
                'CHEMICAL/BIOLOGICAL CONTROL',
                style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'ConcertOne-Regular'),
              ),

            ),
            Padding(
              padding: EdgeInsets.only(top: 20, bottom: 20, left: 14,right: 14),
              child: Text(' 1. Under high disease pressure, timely fungicide applications can greatly minimize impact on yield. These applications are costly and usually only practical when disease pressure is high.\n\n2.Proline 480 SC: Proline 480 SC is to be applied at 420 mL per/ha. This fungicide can only be applied a maximum 1 time/year. It should be note that only ground application is acceptable.\n\n3. Tilt 250 and Bumper 418 EC: Tilt 250 is to be applied at 500 mL/ha. Bumper 418 EC is to be applied at 300 mL/ha. Both fungicides are to be applied when rust pustules first appear. If disease is prevalent after primary application, a second application 14 days later may be necessary.',
                textAlign: TextAlign.justify,style: TextStyle(
                    fontSize: 17,
                    fontFamily: 'Raleway'),
              ),

            ),


          ],
        ));
  }

  Widget amenities(
      String url1,
      String url2,
      String url3,
      String features1,
      String features2,
      String features3,
      ) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        Container(
            width: 76,
            height: 76,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40.0),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 1.0),
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 0.2)
                ]),
            child: Column(
              children: <Widget>[
                Image.asset(
                  url1,
                  fit: BoxFit.contain,
                  height: 40.0,
                  width: 40.0,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(features1)
              ],
            )),
        Container(
            width: 76,
            height: 76,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40.0),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 1.0),
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 0.2)
                ]),
            child: Column(
              children: <Widget>[
                Image.asset(
                  url2,
                  fit: BoxFit.contain,
                  height: 40.0,
                  width: 40.0,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(features2)
              ],
            )),
        Container(
            width: 76,
            height: 76,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40.0),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 1.0),
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 0.2)
                ]),
            child: Column(
              children: <Widget>[
                Image.asset(
                  url3,
                  fit: BoxFit.contain,
                  height: 40.0,
                  width: 40.0,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(features3)
              ],
            )),
      ],
    );
  }

  Widget about_hotel(
      String description,
      ) {
    return Padding(
        padding: EdgeInsets.only(left: 14, top: 6, right: 14),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              description,
              style: TextStyle(fontSize: 20, fontFamily: 'ConcertOne-Regular'),
            ),
          ],
        ));
  }
}
