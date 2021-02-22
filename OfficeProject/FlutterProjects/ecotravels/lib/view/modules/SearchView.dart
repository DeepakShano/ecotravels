import 'package:ecotravels/helper/GridViewHepler.dart';
import 'package:ecotravels/helper/HexColor.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class SearchView extends StatefulWidget {
  SearchView({Key key}) : super(key: key);

  @override
  _SearchViewState createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: _searchAppBAr(), body: _searchBody());
  }

  Widget _searchAppBAr() {
    return AppBar(
      leading: Center(
        child: InkWell(
          onTap: () {
            Get.back();
          },
          child: CircleAvatar(
            radius: 12.0,
            backgroundColor: HexColor('#ff5715'),
            child: Center(
              child: Icon(
                Icons.arrow_back_ios_outlined,
                size: 12,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
      actions: [
        _toolbarActionItem(Icons.line_weight),
        _toolbarActionItem(Icons.grid_view),
        _toolbarActionItem(Icons.filter_alt),
      ],
      elevation: 0,
      backgroundColor: Colors.white,
      centerTitle: false,
      title: Text(
        "Search",
        style: TextStyle(
          color: Colors.black,
          fontSize: 18,
        ),
      ),
    );
  }

  Widget _toolbarActionItem(IconData actionIcon) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: Container(
        width: 30,
        height: 30,
        alignment: Alignment.topRight,
        child: Center(
          child: InkWell(
            onTap: () {},
            child: CircleAvatar(
              backgroundColor: Colors.white,
              child: Center(
                child: Icon(
                  actionIcon,
                  size: 25,
                  color: Colors.grey,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _searchBody() {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Center(
            child: Text(
              '"25 results found"',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
          ),
          Center(
            child: Container(
              height: 75,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  child: Row(
                    children: [
                      Spacer(),
                      Text("Sort by",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500)),
                      Spacer(),
                      Text("Release date",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: HexColor('#adbac8'))),
                      Icon(
                        Icons.keyboard_arrow_down,
                        color: HexColor('#adbac8'),
                        // size: 18,
                      ),
                      Spacer(),
                      Text("Descending",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: HexColor('#adbac8'))),
                      Icon(
                        Icons.keyboard_arrow_down,
                        color: HexColor('#adbac8'),
                        // size: 18,
                      ),
                      Spacer()
                    ],
                  ),
                ),
              ),
            ),
          ),
          Expanded(
              child: GridView.builder(
            // shrinkWrap: true,
            // physics: NeverScrollableScrollPhysics(),
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCountAndFixedHeight(
              crossAxisCount: 2,
              crossAxisSpacing: 5,
              mainAxisSpacing: 5,
              height: 255.0,
            ),
            itemCount: 25,
            itemBuilder: (BuildContext context, int index) {
              return _popularTourHorizonalListContent(index);
            },
          ))
        ],
      ),
    );
  }

  Widget _popularTourHorizonalListContent(int index) {
    return Container(
      child: Card(
        color: Colors.white,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
            side: BorderSide(color: Colors.transparent)),
        child: InkWell(
          onTap: () {
            // Get.to(PopularDestinationDetailsView());
          },
          child: Container(
            height: 400,
            child: Stack(children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image(
                      image: NetworkImage(
                          'https://www.metimeaway.com/wp-content/uploads/2019/11/sustainable-travel.jpg'),
                      fit: BoxFit.fill,
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
                            maxLines: 2,
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 12),
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
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(12, 0, 0, 5),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'INR 26,500',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: HexColor("#adbac8"),
                          fontSize: 10,
                          decoration: TextDecoration.lineThrough,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(12, 0, 0, 5),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text('INR 16,500',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: HexColor("#4ca74a"),
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(12, 0, 10, 5),
                    child: Row(children: [
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
                      Text('(1 review)',
                          style: TextStyle(
                            color: HexColor("#adbac8"),
                            fontSize: 8,
                          )),
                    ]),
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
        ),
      ),
    );
  }
}
