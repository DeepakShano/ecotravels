import 'package:ecotravels/helper/HexColor.dart';
import 'package:ecotravels/view/general/EcoTravelAppBar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

import 'PopularDestinationDetails.dart';

class PopularDestinaltionList extends StatefulWidget {
  @override
  _PopularDestinaltionList createState() => _PopularDestinaltionList();
}

class _PopularDestinaltionList extends State<PopularDestinaltionList> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        color: Colors.white,
        child: NestedScrollView(
          // Setting floatHeaderSlivers to true is required in order to float
          // the outer slivers over the inner scrollable.
          floatHeaderSlivers: true,
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              EcoTravelAppBAr.appBar("Asia", 'https://www.metimeaway.com/wp-content/uploads/2019/11/sustainable-travel.jpg',true)
            ];
          },
          body: ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            scrollDirection: Axis.vertical,
            itemCount: 50,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: double.infinity,
                  child: _PopularDestinationListContent(index),
                ),
              );
            },
          ),
        ));
  }

  _PopularDestinationListContent(int index) {
    return Card(
      color: Colors.white,
      elevation: 5,
      child: Column(
        children: [
          Row(children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image(
                  image: NetworkImage(
                      'https://www.metimeaway.com/wp-content/uploads/2019/11/sustainable-travel.jpg'),
                  fit: BoxFit.cover,
                  width: 120,
                  height: 80,
                ),
              ),
            ),
            SizedBox(
              width: 4,
            ),
            Expanded(
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Dubai - All stunning placesk',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.access_time_outlined,
                        color: HexColor("#4ca74a"),
                        size: 15,
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
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.calendar_today,
                        color: HexColor("#4ca74a"),
                        size: 15,
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
                  )
                ],
              ),
            )
          ]),
          Container(
            margin: EdgeInsets.all(10.0),
            child: GridView.count(
                physics: NeverScrollableScrollPhysics(),
                crossAxisCount: 2,
                crossAxisSpacing: 4.0,
                mainAxisSpacing: 4.0,
                shrinkWrap: true,
                // use it
                childAspectRatio: 10,
                children: List.generate(7, (index) {
                  return Center(
                    child: _GridContent(),
                  );
                })),
          ),
          Container(
              margin: EdgeInsets.fromLTRB(10.0, 0, 10.0, 10.0),
              child: Row(
                children: [
                  ButtonTheme(
                    minWidth: 120,
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0)),
                      color: HexColor('#4ca74a'),
                      onPressed: () {
                        Get.to(PopularDestinationDetailsView());
                      },
                      child: Text(
                        'View Details',
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
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
              ))
        ],
      ),
    );
  }

  _GridContent() {
    return (Row(
      children: [
        Icon(
          Icons.check,
          color: HexColor('#4d94ff'),
          size: 12,
        ),
        SizedBox(
          width: 4,
        ),
        Expanded(
          child: Text(
            'Beautiful view of Jung Frau',
            style: TextStyle(color: HexColor('#41474f'), fontSize: 10),
          ),
        )
      ],
    ));
  }
}
