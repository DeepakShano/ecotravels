import 'package:ecotravels/helper/HexColor.dart';
import 'package:ecotravels/view/general/EcoTravelAppBar.dart';
import 'package:ecotravels/view/modules/populardestination/PopularDestinationDetails.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';


class CruiseDeals extends StatefulWidget {
  @override
  _CruiseDealsTab createState() => _CruiseDealsTab();
}

class _CruiseDealsTab extends State<CruiseDeals> {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: NestedScrollView(
          // Setting floatHeaderSlivers to true is required in order to float
          // the outer slivers over the inner scrollable.
          floatHeaderSlivers: true,
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              EcoTravelAppBAr.appBar("Cruise Deals", 'https://data.whicdn.com/images/326611687/original.jpg',false),
            ];
          },
          body: ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            scrollDirection: Axis.vertical,
            itemCount: 50,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.fromLTRB(10.0,0,10,25),
                child: Container(
                  width: double.infinity,
                  child: _CruiseDealsListContent(),

                ),
              );
            },
          ),
        ));
  }


  _CruiseDealsListContent() {
    return Card(
      color: Colors.white,
      elevation: 5,
      child: Column(
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image(
                  image: NetworkImage(
                      'https://www.royalcaribbeanblog.com/sites/default/files/blog-images/majesty-aerial.jpg'),
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: 220,
                ),
              ),
              Positioned(
                top: 0,
                left: 0,
                right: 0,
                child: Container(
                  margin: EdgeInsets.fromLTRB(8.0, 8, 10.0, 10.0),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Dubai - All stunning placesk',
                      style:
                      TextStyle(
                          color: Colors.deepOrange,
                          fontWeight: FontWeight.bold, fontSize: 14),
                    ),
                  ),
                ),
              ),

              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                    margin: EdgeInsets.fromLTRB(8.0, 0, 10.0, 10.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.fromLTRB(8, 0, 10, 0),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      'From',
                                      style: TextStyle(
                                          color: HexColor('#adbac8'),
                                          fontSize: 10
                                      ),
                                    ),
                                    Spacer(),
                                    Text(
                                      '(1 review)',
                                      style: TextStyle(
                                          color: HexColor('#adbac8'),
                                          fontSize: 10
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      'INR 16,500',
                                      style: TextStyle(
                                          color: HexColor('#ff5715'),
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold
                                      ),
                                    ),
                                    Spacer(),
                                    SmoothStarRating(
                                      rating: 5,
                                      isReadOnly: true,
                                      size: 10,
                                      filledIconData: Icons.star,
                                      halfFilledIconData: Icons.star_half,
                                      defaultIconData: Icons.star_border,
                                      color: HexColor('#f4a140'),
                                      starCount: 5,
                                      allowHalfRating: true,
                                      spacing: 0.5,
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        )

                      ],
                    )),
              )
            ],
          ),

          SizedBox(
            height: 5,
          ),
          Container(
            margin: EdgeInsets.fromLTRB(8,6,8,2),
            child: Row(
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.access_time_outlined,
                      color: HexColor("#4ca74a"),
                      size: 16,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      '7 days',
                      style: TextStyle(
                        color: HexColor("#adbac8"),
                        fontSize: 10,
                      ),
                    ),
                  ],
                ),
                Spacer(),
                Row(
                  children: [
                    Icon(
                      Icons.calendar_today,
                      color: HexColor("#4ca74a"),
                      size: 16,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Availability : Jan 21’ - Dec 21’',
                      style: TextStyle(
                        color: HexColor("#adbac8"),
                        fontSize: 10,

                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(8,6,8,15),
            child: Text(
              'Donec id elit non mi porta gravida at eget metus. Nulla vitae elit libero, a pharetra augue. Etiam porta sem malesuada magna mollis euismod. Donec ullamcorper nulla non metus auctor',
              textAlign: TextAlign.justify,
            ),
          ),

        ],
      ),
    );



  }

}