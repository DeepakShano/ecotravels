

import 'package:ecotravels/controller/HomeController.dart';
import 'package:ecotravels/helper/GlobalClass.dart';
import 'package:ecotravels/helper/HexColor.dart';
import 'package:ecotravels/view/general/NavigationDrawer.dart';
import 'package:ecotravels/view/modules/populardestination/PopularDestinationDetails.dart';
import 'package:ecotravels/view/modules/populardestination/PopularDestinationList.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  HomeControler homeControler = Get.put(HomeControler());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: _homeAppBAr(),
        drawer: NavigationDrawer(),
        body: ListView(children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(15.0, 5.0, 15.0, 5.0),
            child: Text(
              "Plan your next trip",
              style: TextStyle(
                color: HexColor("#41474f"),
                fontSize: 30,
              ),
            ),
          ),

          //TextField For Keywrords
          Padding(
            padding: const EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 5.0),
            child: TextFormField(
              textDirection: TextDirection.ltr,
              decoration: InputDecoration(
                hintText: "Keywords",
                hintStyle: TextStyle(color: HexColor('#adbac8')),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide(
                    color: Colors.transparent,
                  ),
                ),
                fillColor: HexColor("#f5f7fa"),
                filled: true,
                suffixIcon: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.search,
                    color: Colors.grey,
                  ),
                ),
                border: new OutlineInputBorder(
                  borderRadius: const BorderRadius.all(
                    const Radius.circular(10.0),
                  ),
                  borderSide: BorderSide(
                    color: Colors.transparent,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide(
                    color: Colors.transparent,
                  ),
                ),
              ),
            ),
          ),

          //Destinations DropDown
          Padding(
            padding: const EdgeInsets.fromLTRB(15.0, 5.0, 15.0, 5.0),
            child: GlobalClass.mDropDown(
                'Destination',
                homeControler.mDestinations,
                homeControler.mDestinationsController),
          ),

          //Duraion DropDown
          Padding(
            padding: const EdgeInsets.fromLTRB(15.0, 5.0, 15.0, 5.0),
            child: GlobalClass.mDropDown('Duration', homeControler.mDuration,
                homeControler.mDurationController),
          ),

          //Search Raised Button
          Padding(
              padding: const EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 5.0),
              child: ButtonTheme(
                height: 50.0,
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      side: BorderSide(color: Colors.transparent)),
                  color: HexColor('#ff753f'),
                  onPressed: () => print("Button Pressed"),
                  child: new Text(
                    "Search",
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  ),
                ),
              )),

          //popular destination heding text and view all button in a single row
          Padding(
            padding: const EdgeInsets.fromLTRB(15.0, 25.0, 15.0, 5.0),
            child: Row(
              children: [
                Text(
                  'Popular Destination',
                  style: TextStyle(
                      color: HexColor('#41474f'),
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),
                Spacer(),
                ButtonTheme(
                  minWidth: 25.0,
                  height: 25.0,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        side: BorderSide(color: Colors.transparent)),
                    color: Colors.white,
                    onPressed: () =>   Get.to(PopularDestinaltionList()),
                    child: new Text(
                      "View All Destination",
                      style:
                          TextStyle(color: HexColor('#ff5715'), fontSize: 12),
                    ),
                  ),
                )
              ],
            ),
          ),

//popular destination horizontal scroll list
          Padding(
              padding: const EdgeInsets.fromLTRB(15.0, 0, 15.0, 0),
              child: SizedBox(
                height: 220,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 50,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 160,
                        height: 20,
                        child: _PopularDestinationHorizonalListContent(index),
                      ),
                    );
                  },
                ),
              )),

          //popular tours heading text and view all button in a single row
          Padding(
            padding: const EdgeInsets.fromLTRB(15.0, 15.0, 15.0, 5.0),
            child: Row(
              children: [
                Text(
                  'Popular Tours',
                  style: TextStyle(
                      color: HexColor('#41474f'),
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),
                Spacer(),
                ButtonTheme(
                  minWidth: 25.0,
                  height: 25.0,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        side: BorderSide(color: Colors.transparent)),
                    color: Colors.white,
                    onPressed: () => Get.to(PopularDestinaltionList()),
                    child: new Text(
                      "View All Tours",
                      style:
                          TextStyle(color: HexColor('#ff5715'), fontSize: 12),
                    ),
                  ),
                )
              ],
            ),
          ),

//popular tours horizontal scroll list
          Padding(
              padding: const EdgeInsets.fromLTRB(15.0, 0, 15.0, 5),
              child: SizedBox(
                height: 245,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 50,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        width: 240,
                        height: 20,
                        child: _PopularTourHorizonalListContent(index),
                      ),
                    );
                  },
                ),
              ))
        ]));
  }

  //HomePageAppBar
  _homeAppBAr() {
    return AppBar(
      toolbarHeight: 40,
      leading: Builder(
        builder: (context) => Center(
          child: IconButton(
            onPressed: () => Scaffold.of(context).openDrawer(),
            icon: Icon(
              Icons.menu,
              size: 25,
              color: Colors.grey,
            ),
          ),
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: 30,
            height: 30,
            alignment: Alignment.topRight,
            child: Center(
              child: InkWell(
                onTap: () {
                  // Get.back();
                },
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Center(
                    child: Icon(
                      Icons.account_circle_rounded,
                      size: 28,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
            ),
          ),
        )
      ],
      elevation: 0,
      backgroundColor: Colors.white,
      centerTitle: true,
      title: Text(
        "",
        style: TextStyle(
          color: Colors.black,
          fontSize: 18,
        ),
      ),
    );
  }

  _PopularDestinationHorizonalListContent(int index) {
    return InkWell(
      onTap: (){
        Get.to(PopularDestinationDetailsView());
      },
      child: Stack(
        children: <Widget>[
          Image(
            image: NetworkImage(
                'https://www.metimeaway.com/wp-content/uploads/2019/11/sustainable-travel.jpg'),
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 5, 5, 0),
            child: Container(
                padding: EdgeInsets.all(0),
                alignment: Alignment.topRight,
                child: ButtonTheme(
                  height: 10.0,
                  minWidth: 5,
                  child: Container(
                    decoration: new BoxDecoration(
                      color: HexColor('#4ca74a'),
                      borderRadius: BorderRadius.circular(6.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(6, 6, 6, 6),
                      child: Text(
                        "$index tours",
                        style: TextStyle(color: Colors.white, fontSize: 10),
                      ),
                    ),
                  ),
                )),
          ),
          Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 5, 0),
              child: Container(
                padding: EdgeInsets.all(0),
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                    'Western Europe',
                    style: TextStyle(color: Colors.white, fontSize: 12.5),
                  ),
                ),
              ))
        ],
      ),
    );
  }

  _PopularTourHorizonalListContent(int index) {
    return Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
          side: BorderSide(color: Colors.transparent)),
      child: InkWell(
        onTap: (){
          Get.to(PopularDestinationDetailsView());
        },
        child: Stack(children: [
          Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image(
                  image: NetworkImage(
                      'https://www.metimeaway.com/wp-content/uploads/2019/11/sustainable-travel.jpg'),
                  fit: BoxFit.cover,
                  height: 100,
                  width: double.infinity,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(12, 0, 0, 0),
                child: Row(
                  children: [
                    Icon(
                      Icons.flash_on,
                      color: HexColor("#ff5715"),
                      size: 15,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Text(
                        'Venice, Rome & Milan 9 Days 8 Nights',
                        style:
                            TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(12, 0, 10, 10),
                child: Row(
                  children: [
                    Icon(
                      Icons.access_time_outlined,
                      color: HexColor("#4ca74a"),
                      size: 15,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Expanded(
                      child: Text(
                        '7 days',
                        style: TextStyle(
                          color: HexColor("#adbac8"),
                          fontSize: 10,
                        ),
                      ),
                    ),
                    Spacer(),
                    Text(
                        'INR 26,500',
                        style: TextStyle(
                          color: HexColor("#adbac8"),
                          fontSize: 10,
                          decoration: TextDecoration.lineThrough,
                        ),
                      ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(12, 0, 10, 5),
                child: Row(
                  children: [
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
                    SizedBox(
                      width: 2,
                    ),
                Text(
                  '(1 review)',
                  style: TextStyle(
                    color: HexColor("#adbac8"),
                    fontSize: 8,
                  )
                ),
                    Spacer(),
                    Text(
                        'INR 16,500',
                        style: TextStyle(
                          color: HexColor("#4ca74a"),
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        )
                    ),
                  ]
                ),
              )
            ],
          ),
          Positioned(
            left: 0,
            top: 80,
            child: Container(
              margin: EdgeInsets.fromLTRB(12, 5, 10, 5),
              decoration: new BoxDecoration(
                color: HexColor('#ff753f'),
                borderRadius: BorderRadius.circular(6.0),
              ),
              alignment: Alignment.bottomLeft,
              child: Container(
                padding: EdgeInsets.all(10),
                child: Text(
                  'Bestseller',
                  style: TextStyle(color: Colors.white, fontSize: 10),
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
