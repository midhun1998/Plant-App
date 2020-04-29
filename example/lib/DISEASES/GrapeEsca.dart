import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
class GrapeEsca extends StatefulWidget {
  GrapeEsca({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _GrapeEscaState createState() => _GrapeEscaState();
}

class _GrapeEscaState extends State<GrapeEsca> {
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
                            AssetImage('assets/22.jpg'),
                            // Photo from https://unsplash.com/photos/2d4lAQAlbDA
                            AssetImage('assets/23.jpg'),
                            // Photo from https://unsplash.com/photos/FqqiAvJejto
                            AssetImage('assets/24.jpg'),
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
                              'Grape Esca',
                              style: new TextStyle(
                                fontFamily: "VT323",
                                fontWeight: FontWeight.bold,
                                fontSize: 22.0,),

                            ),
                            Text('Togninia Minima', style: new TextStyle(fontSize: 15.0,),),

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
              padding: EdgeInsets.only(top: 60, bottom: 20, left: 14),
              child: Text('SYMPTOMS',
                style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'ConcertOne-Regular'),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20, bottom: 20, left: 14, right: 14),
              child: Text('     The disease may occur at any time during the growing season. The main symptom is an interveinal "striping" on the leaves, which is characterized by the discoloration and drying of the tissues around the main veins. It usually shows as dark red in red varieties and yellow in white ones. Leaves can dry out completely and drop prematurely. On berries, small, round, dark spots, often bordered by a brown-purple ring, may occur. These fruit spots may appear at any time between fruit set and ripening. In severely affected vines, the berries often crack and dry. Cross-sectional cuts through affected canes, spurs, cordons, or trunks reveal concentric rings formed by dark spots. A severe form of Esca known as "apoplexy" results in a sudden dieback of the entire vine.', textAlign: TextAlign.justify , style: TextStyle(
                  fontSize: 17,
                  fontFamily: 'Raleway'),),
            ),
            Padding(
              padding: EdgeInsets.only(top: 40, bottom: 20, left: 14),
              child: Text(
                'FAVORABLE ENVIRONMENT CONDITIONS',
                style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'ConcertOne-Regular'),
              ),
            ),

            Padding(
              padding: EdgeInsets.only(top: 20, bottom: 20, left: 14, right: 14),
              child: Text('     The infection actually occurs in younger vines but the symptoms may first become apparent in vineyards after 5-7 years.  The fungi survive the winter in overwintering structures embedded in the woody parts of the vines. During fall to spring rainfall, spores are produced and released and may infect wounds done during dormant pruning. Wounds may remain susceptible to infection for several weeks after pruning. After a pruning wound is infected, the pathogen establishes a permanent, localized wood infection, which cannot be eradicated by fungicide applications. ', textAlign: TextAlign.justify,
                style: TextStyle(
                    fontSize: 17,
                    fontFamily: 'Raleway'),
              ),

            ),

            Padding(
              padding: EdgeInsets.only(top: 40, bottom: 20, left: 14),
              child: Text(
                'MANAGEMENT (REMEDIES)',
                style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'ConcertOne-Regular'),
              ),

            ),
            Padding(
              padding: EdgeInsets.only(top: 20, bottom: 20, left: 14, right: 14),
              child: Text('1. Use alternative pruning methods such as delayed pruning or double pruning.\n\n2. Avoid pruning during periods of heavy rainfall when spores are likely to be dispersed.\n\n3. Monitor the vineyard in Spring, and look for dead spurs or for stunted shoots.\n\n4. Later in summer, cut off cankered portions of the vine.\n\n5. Remove diseased debris from the vineyard and destroy them.\n\n6. Delay fruiting for several years until vines have balanced root and shoot growth.', textAlign: TextAlign.justify,
                style: TextStyle(
                    fontSize: 17,
                    fontFamily: 'Raleway'),
              ),

            ),

            Padding(
              padding: EdgeInsets.only(top: 40, bottom: 20, left: 14),
              child: Text(
                'CHEMICAL/BIOLOGICAL CONTROL',
                style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'ConcertOne-Regular'),
              ),

            ),
            Padding(
              padding: EdgeInsets.only(top: 20, bottom: 20, left: 14, right: 14),
              child: Text('1. Soak dormant cuttings for 30 mins in hot water at about 50°C. This treatment is not always effective and must therefore be combined with other methods. Some species of Trichoderma have been used to prevent the infection of pruning wounds, basal ends of propagation material, and graft unions. This treatment has to be carried out within 24 hours of pruning and again 2 weeks after.\n\n2. Always consider an integrated approach with preventive measures together with biological treatments if available. Chemical strategies to control this disease are difficult, since the traditional wound protectants do not penetrate deep enough in the dormant grapevine cuttings to affect the fungi. Preventive practices are the most effective management approach for all trunk diseases. For example, immediately before grafting, vines can be deeped into specialized waxes containing plant growth regulators or fungicide-impregnated formulations. This encourages graft union callus development while inhibiting fungal contamination.', textAlign: TextAlign.justify,
                style: TextStyle(
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
