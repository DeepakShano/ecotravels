import 'package:ecotravels/helper/HexColor.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class ItineraryView extends StatefulWidget {
  @override
  _ItineraryViewTab createState() => _ItineraryViewTab();
}


class _ItineraryViewTab extends State<ItineraryView> {

  @override
  Widget build(BuildContext context) {
    return
      ExpandableTheme(
        data:
        const ExpandableThemeData(
          iconColor: Colors.blue,
          useInkWell: true,
        ),
        child: Container(
          margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
          child: ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            scrollDirection: Axis.vertical,
            itemCount: 5,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.fromLTRB(8.0,0,8,0),
                child: Container(
                  width: double.infinity,
                  child: Card1(),
                ),
              );
            },
          ),
        ),
        );

  }
}

const loremIpsum =
"It’s market day in Lausanne! Enjoy browsing and packing a picnic lunch for our 11 a.m. boat cruise on Lake Geneva. A few miles down-shore we’ll dock at Château de Chillon, where we’ll have a guided tour of this delightfully medieval castle on the water. On our way back we’ll take time to peek into the vineyards surrounding Lutry before returning to Lausanne. Boat: 2 hrs. Bus: 1 hr. Walking: moderate.";
class Card1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ExpandableNotifier(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(8.0,2,8,2),
          child: Card(
            clipBehavior: Clip.antiAlias,
            child: Column(
              children: <Widget>[
                ScrollOnExpand(
                  scrollOnExpand: true,
                  scrollOnCollapse: false,
                  child: ExpandablePanel(
                    theme: const ExpandableThemeData(
                      hasIcon: false,
                      headerAlignment: ExpandablePanelHeaderAlignment.center,
                      tapBodyToCollapse: true,
                    ),
                    header: Padding(
                        padding: EdgeInsets.fromLTRB(10,10,10,5),
                        child:   RichText(
                          text: TextSpan(
                            style: DefaultTextStyle.of(context).style,
                            children: <TextSpan>[
                              TextSpan(
                                  text: 'Day 5 ',
                                  style: TextStyle(
                                      color: HexColor('#41474f'),
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold)),
                              TextSpan(
                                  text: ' Lake Geneva and Château de Chillon',
                                  style: TextStyle(
                                      color: HexColor('#ff7544'),
                                      fontSize: 16,)),
                            ],
                          ),
                        )
                    ),
                    expanded:
                          Padding(
                              padding: EdgeInsets.only(bottom: 10),
                              child: Text(
                                loremIpsum,

                                softWrap: true,
                                style: TextStyle(
                                  color: HexColor('#41474f'),
                                  fontFamily: 'assets/fonts/circularstd_book.otf' ,
                                  height: 1.5,
                                ),
                                overflow: TextOverflow.fade,
                                textAlign: TextAlign.justify,
                              )),

                    builder: (_, collapsed, expanded) {
                      return Padding(
                        padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
                        child: Expandable(
                          collapsed: collapsed,
                          expanded: expanded,
                          theme: const ExpandableThemeData(crossFadePoint: 0),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
