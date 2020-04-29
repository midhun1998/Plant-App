import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
class PotatoLateBlight extends StatefulWidget {
  PotatoLateBlight({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _PotatoLateBlightState createState() => _PotatoLateBlightState();
}

class _PotatoLateBlightState extends State<PotatoLateBlight> {
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
                            AssetImage('assets/19.jpg'),
                            AssetImage('assets/20.jpg'),
                            AssetImage('assets/21.jpg'),
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
                              'Potato Late Blight',
                              style: new TextStyle(
                                fontFamily: "VT323",
                                fontWeight: FontWeight.bold,
                                fontSize: 22.0,),

                            ),
                            Text('Phytophthora infestans', style: new TextStyle(fontSize: 15.0,),),

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
              child: Text('     Dark brown spots develop on the leaves starting at the tip or the leaf margins. In humid climates, these spots become water-soaked lesions. A white fungal covering can be seen on the underside of the leaves. As the disease progresses, entire leaves become necrotic, turn brown and die off. Similar lesions develop on stems and petioles. The potato tubers have greyish-blue spots on their skin and their flesh also turns brown, making them inedible. The rotting of the infested fields emits a distinctive odor.', style: TextStyle(
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
              child: Text('     This fungus is an obligate parasite. This means that it must overwinter in plant debris and tubers as well as on alternative hosts to survive. It enters the plant via wounds and rips in the skin. Fungal spores germinate at higher temperatures during the spring and spread through wind or water. The disease is more severe in periods of cool nights (below 18°C), warm days (18-22°C), and extended wet conditions such as rain and fog (90% relative humidity). In these conditions, a late blight epidemic can occur.',
                textAlign: TextAlign.justify,style: TextStyle(
                    fontSize: 17,
                    fontFamily: 'Raleway'),
              ),

            ),
            Padding(
              padding: EdgeInsets.only(top: 20, bottom: 20, left: 14, right: 14),
              child: Image.asset('assets/PotatoLateCycle.jpg'),

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
              child: Text('1. Use healthy seeds or more tolerant plants.\n\n2. Make sure the field has good air ventilation and well-drained soil.\n\n3. Monitor fields and remove infected plants and surrounding ones.\n\n4. Use rotations of two to three years to non-host crops.\n\n5. Destroy volunteer hosts in and around the field.\n\n6. Avoid excessive fertilization with nitrogen.\n\n7. Use plant fortifiers.\n\n8. Store tubers at low temperatures and with good ventilation.\n\n9. Destroy tubers and plant debris after harvest burying them two feet deep or feeding them to animals.',
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
              child: Text(' Apply copper-based fungicides before dry weather. Foliar sprays of organic coating agents can also prevent the infection. Always consider an integrated approach with preventive measures together with biological treatments if available. Fungicide applications are important to control late blight, particularly in humid areas. Contact fungicides that coat leaves are effective before infections and do not trigger resistance in the fungi. Fungicides containing mandipropamid, chlorothalonil, fluazinam, or mancozeb can also be used as a preventive treatment. Seed treatment before sowing with fungicides like mancozeb also work.',
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
