import 'package:ecotravels/helper/HexColor.dart';
import 'package:ecotravels/view/general/EcoTravelAppBar.dart';
import 'package:ecotravels/view/modules/Details.dart';
import 'package:flutter/material.dart';

import '../PhotogalleryView.dart';

class PopularDestinationDetailsView extends StatefulWidget {
  @override
  _DestinationDetailsViewTab createState() => _DestinationDetailsViewTab();
}


class _DestinationDetailsViewTab extends State<PopularDestinationDetailsView> {

  @override
  Widget build(BuildContext context) {
    return  Container(
        color: Colors.white,
        child: NestedScrollView(
          // Setting floatHeaderSlivers to true is required in order to float
          // the outer slivers over the inner scrollable.
          floatHeaderSlivers: true,
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              EcoTravelAppBAr.appBar("Asia", ""),
            ];
          },
          body:DefaultTabController(
            length: 6,
            child: Scaffold(
              appBar: TabBar(
                indicatorColor: HexColor('#ff5715'
                    ''),
                isScrollable: true,
                  tabs: [
                    Tab(text: 'Details'),
                    Tab(text: 'Photos'),
                    Tab(text: 'Itineray'),
                    Tab(text: 'Maps'),
                    Tab(text: 'FAQ'),
                    Tab(text: 'Reviews')
                  ],
                ),
              body: TabBarView(
                children: [
                  DetailsView(),
                  PhotoGalleryView(),
                  Icon(Icons.directions_bike),
                  Icon(Icons.directions_bike),
                  Icon(Icons.directions_bike),
                  Icon(Icons.directions_bike),
                ],
              ),
            ),
          ),
        ));
  }




}