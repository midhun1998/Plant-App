import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
class AppleScab extends StatefulWidget {
  AppleScab({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _AppleScabState createState() => _AppleScabState();
}

class _AppleScabState extends State<AppleScab> {
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
                            AssetImage('assets/1.jpg'),
                            // Photo from https://unsplash.com/photos/2d4lAQAlbDA
                            AssetImage('assets/2.jpg'),
                            // Photo from https://unsplash.com/photos/FqqiAvJejto
                            AssetImage('assets/3.jpg'),
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
                              'Apple Scab',
                              style: new TextStyle(
                                fontFamily: "VT323",
                                fontWeight: FontWeight.bold,
                                fontSize: 22.0,),

                            ),
                            Text('Venturia Inaequalis', style: new TextStyle(fontSize: 15.0,),),

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
              padding: EdgeInsets.only(top: 60, bottom: 20, left: 14, right: 14),
              child: Text('SYMPTOMS',
              style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'ConcertOne-Regular'),
            ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20, bottom: 20, left: 14, right: 14),
              child: Text('     The first visible symptoms of apple scab appear in the spring in the form of minute, circular, olive-green spots on leaves, often along a main vein. As they enlarge, they become brownish-black and eventually coalesce to form large patches of necrotic tissue. As they develop further, they often coalesce and become raised, hard and corky. This restricts the expansion of the fruit and leads to distortion and cracking of the skin that expose the flesh. Light attacks do not affect the fruit quality significantly. However, the scabs can expose the fruits to opportunistic pathogens and rots, reducing the storage capacity and the quality.  Affected leaves are often deformed and fall off prematurely, leading to defoliation in case of heavy infections. On shoots, the infections causes blistering and cracking that can then provide entry for opportunistic pathogens. On the fruits, brown to dark brown circular areas appear on the surface.',textAlign: TextAlign.justify, style: TextStyle(
                fontSize: 17,
                fontFamily: 'Raleway'),),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20, bottom: 20, left: 14, right: 14),
              child: Image.asset('assets/AppleScabCycle.jpg'),

            ),
            Padding(
              padding: EdgeInsets.only(top: 40, bottom: 20, left: 14, right: 14),
              child: Text(
                'FAVORABLE ENVIRONMENT CONDITIONS',
                style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'ConcertOne-Regular'),
              ),
            ),

            Padding(
              padding: EdgeInsets.only(top: 20, bottom: 20, left: 14, right: 14),
              child: Text('     Apple scab is a disease caused by the fungus Venturia inaequalis. It survives the winter mainly on infected leaves on the ground but also on bud scales or lesions on wood. At the onset of spring, the fungus resumes growth and starts to produce spores, which are later discharged and dispersed over long distances by the wind. These spores land on developing leaves and fruits and start a new infection. Outer parts of unopened fruit buds are highly susceptible to scab. However, as the fruit matures it becomes much less susceptible. Humid environment, wetting period of leaves or fruits are essential for the infection. Alternative hosts include shrubs of the genus Cotoneaster, Pyracantha and Sorbus. All apple varieties are susceptible to scab, with Gala being more vulnerable.',
                textAlign: TextAlign.justify,style: TextStyle(
                    fontSize: 17,
                    fontFamily: 'Raleway'),
              ),

            ),
            Padding(
              padding: EdgeInsets.only(top: 40, bottom: 20, left: 14, right: 14),
              child: Text(
                'MANAGEMENT (REMEDIES)',
                style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'ConcertOne-Regular'),
              ),

            ),
            Padding(
              padding: EdgeInsets.only(top: 20, bottom: 20, left: 14, right: 14),
              child: Text('''1. Use tolerant or resistant varieties.\n\n2. Monitor orchards for signs of the disease.\n\n3. Pick up affected leaves, shoots and fruits.\n\n4. Rake all the fallen leaves from around your trees after harvest.\n\n5. Alternatively, apply 5% urea to leaves in the autumn to enhance their decomposition and to obstruct the life cycle of the fungus.\n\n6. Excessive leaf litter can can also be mowed to speed up the breakdown of tissues.\n\n7. Ensure a pruning method that allow for more air circulation.\n\n8. Water in the evening or early morning hours and avoid overhead irrigation.\n\n9. Avoid getting foliage wet when watering.\n\n10. Apply lime after leaf drop to increase soil pH.\n\n11. Spread a mulch under the trees, keeping it away from the trunk.''',
                textAlign: TextAlign.justify,style: TextStyle(
                    fontSize: 17,
                    fontFamily: 'Raleway'),
              ),

            ),

            Padding(
              padding: EdgeInsets.only(top: 40, bottom: 20, left: 14, right: 14),
              child: Text(
                'CHEMICAL/BIOLOGICAL CONTROL',
                style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'ConcertOne-Regular'),
              ),

            ),
            Padding(
              padding: EdgeInsets.only(top: 20, bottom: 20, left: 14, right: 14),
              child: Text('    If disease levels were high the previous season, liquid copper fungicides can be sprayed to impede the fungal growth on the tree during the winter season. Sulfur sprays are only partially effective against apple scab. However, solutions containing sulfur and pyrethrins are available for organic control of the disease during the growing season. Always consider an integrated approach with preventive measures together with biological treatments if available. Protectant fungicides such as dodine, captan or dinathion can be sprayed around bud break to avoid the disease. Once scab has been detected, fungicides based on difenoconazole, myclobutanil or sulphur can be used to control the development of the fungus. Ensure scab fungicides from different chemical groups are used to avoid the development of resistance. ',
                textAlign: TextAlign.justify, style: TextStyle(
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
