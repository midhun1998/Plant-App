import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
class NorthernCornLeafBlight extends StatefulWidget {
  NorthernCornLeafBlight({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _NorthernCornLeafBlightState createState() => _NorthernCornLeafBlightState();
}

class _NorthernCornLeafBlightState extends State<NorthernCornLeafBlight> {
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
                            AssetImage('assets/13.jpg'),
                            // Photo from https://unsplash.com/photos/2d4lAQAlbDA
                            AssetImage('assets/14.jpg'),
                            // Photo from https://unsplash.com/photos/FqqiAvJejto
                            AssetImage('assets/15.jpg'),
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
                              'Northern Corn Leaf Blight',
                              style: new TextStyle(
                                fontFamily: "VT323",
                                fontWeight: FontWeight.bold,
                                fontSize: 22.0,),

                            ),
                            Text('Exserohilumturcicun', style: new TextStyle(fontSize: 15.0,),),

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
              child: Text('Northern corn leaf blight lesions become pale gray to tan as they enlarge to 1 to 6 inches or longer.Distinct cigar-shaped lesions unrestricted by leaf veins make northern corn leaf blight (NCLB) one of the easiest diseases to identify.Under moist conditions, lesions produce dark gray spores, usually on the lower leaf surface, giving the lesions a "dirty" appearance.As many lesions enlarge and coalesce, entire leaves or leaf areas may be covered.Heavy blighting and lesion coalescence give leaves a gray/burned appearance..', style: TextStyle(
                  fontSize: 17,
                  fontFamily: 'Raleway'),textAlign: TextAlign.justify,),
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
              child: Text(' Spores are spread by rain splash and air currents to the leaves of new crop plants in spring and early summer. Spores may be carried long distances by the wind.\n\nInfection occurs when free water is present on the leaf surface for 6 to 18 hours and temperatures are 65 to 80 F..',
                textAlign: TextAlign.justify,style: TextStyle(
                    fontSize: 17,
                    fontFamily: 'Raleway'),
              ),

            ),
            Padding(
              padding: EdgeInsets.only(top: 20, bottom: 20, left: 14, right: 14),
              child: Image.asset('assets/NorthernDiseaseCycle.jpg'),

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
              child: Text('1.Crop rotation to reduce previous corn residues and disease inoculum\n\n2.Tillage to help break down crop debris and reduce inoculum load\n\n3.Fungicide application to reduce yield loss and improve harvestability\n\n4.Consider hybrid susceptibility, previous crop, tillage, field history, application cost, corn price.\n\n5.Growers should choose hybrids rated a "5" or "6" for fields at risk of NCLB infection',
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
              child: Text(' If disease levels were high the previous season, liquid copper fungicides can be sprayed to impede the fungal growth on the tree during the winter season. Sulfur sprays are only partially effective Maize. However, solutions containing sulfur and pyrethrins are available for organic control of the disease during the growing season. Always consider an integrated approach with preventive measures together with biological treatments if available. Protectant fungicides such as dodine, captan or dinathion can be sprayed around bud break to avoid the disease. Once it has been detected, fungicides based on difenoconazole, myclobutanil or sulphur can be used to control the development of the fungus. Ensure fungicides from different chemical groups are used to avoid the development of resistance.',
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
