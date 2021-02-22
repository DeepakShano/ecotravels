import 'package:ecotravels/helper/HexColor.dart';
import 'package:ecotravels/helper/tag_icons.dart';
import 'package:flutter/material.dart';

class DetailsView extends StatefulWidget {
  @override
  _DetailsViewTab createState() => _DetailsViewTab();
}

class _DetailsViewTab extends State<DetailsView> {
  @override
  Widget build(BuildContext context) {
    return (Container(
      color: Colors.white,
      child: ListView(
        children: [
          Padding(
              padding: EdgeInsets.fromLTRB(18, 15, 18, 5),
              child: _headingText(18.0, '#41474f', 'Best Seller')),
          Padding(
              padding: EdgeInsets.fromLTRB(18, 5, 18, 10),
              child: _offerTag('29000', '190000', '#ff1f1f')),
          Divider(
            color: HexColor('#adbac8'),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(18, 15, 18, 10),
            child: Row(children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _iconWithText(
                      Icons.access_time, '6 days 5 nights', '#ff5715', 10.0,
                      txtColor: '#41474f'),
                  SizedBox(
                    height: 10,
                  ),
                  _iconWithText(Icons.calendar_today, 'Jan 21’ - Dec 21’',
                      '#ff5715', 10.0,
                      txtColor: '#41474f'),
                ],
              ),
              Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _iconWithText(
                      Icons.people_outline, 'Max People : 22', '#ff5715', 10.0,
                      txtColor: '#41474f'),
                  SizedBox(
                    height: 10,
                  ),
                  _iconWithText(
                      Icons.person, 'Minimum age : 12+', '#ff5715', 10.0,
                      txtColor: '#41474f'),
                ],
              ),
              Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _iconWithText(Icons.wifi, 'WiFi available', '#ff5715', 10.0,
                      txtColor: '#41474f'),
                  SizedBox(
                    height: 10,
                  ),
                  _iconWithText(
                      Icons.place, 'Pickup : Airport', '#ff5715', 10.0,
                      txtColor: '#41474f'),
                ],
              ),
            ]),
          ),
          Divider(
            color: HexColor('#adbac8'),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(18, 15, 18, 10),
            child: Text(
              'A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart. I am alone, and feel the charm of existence in this spot, which was created for the bliss of souls like mine. I am so happy, my dear friend, so absorbed in the exquisite sense of mere tranquil existence, that I neglect my talents.\n\nLorem Ipsum decided to leave for the far World of Grammar. The Big Oxmox advised her not to do so, because there were thousands of bad Comma wild Question Marks.',
              textAlign: TextAlign.justify,
              style: TextStyle(color: HexColor('#41474f'), fontSize: 12,
                  fontFamily: 'assets/fonts/circularstd_book.otf' ,
                  height: 1.5,),
            ),
          ),
          Divider(
            color: HexColor('#adbac8'),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(18, 10, 18, 10),
            child: _LeftRightAlignText(
                left: 'Departure & Return Location',
                right: 'John F.K. International Airport'),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(18, 10, 18, 10),
            child: _LeftRightAlignText(
                left: 'Departure Time', right: '3 Hours Before Flight Time'),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(18, 10, 18, 10),
            child: _LeftRightAlignText(left: 'Bedroom', right: '4 Bedrooms'),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(18, 10, 18, 10),
            child: _LeftRightAlignText(left: 'Bathroom', right: '6 Bathrooms'),
          ),
          Divider(
            color: HexColor('#adbac8'),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(18, 10, 18, 10),
            child: _LeftTextwithRightList('Price Includes', Icons.check, [
              'Air fares',
              '3 Nights Hotel Accomodation',
              'Tour Guide',
              'Entrance Fees'
            ]),
          ),
          Divider(
            color: HexColor('#adbac8'),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(18, 10, 18, 10),
            child: _LeftTextwithRightList('Price Excludes', Icons.close, [
              'Guide Service Fee',
              'Driver Service Fee',
              'Any Private Expenses',
              'Room Service Fees'
            ]),
          ),
          Divider(
            color: HexColor('#adbac8'),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(18, 10, 18, 10),
            child: _LeftTextwithRightList('Complementaries', Icons.check,
                ['Umbrella', 'Sunscreen', 'T-Shirt', 'Entrance Fees']),
          ),
          Divider(
            color: HexColor('#adbac8'),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(18, 10, 18, 10),
            child: _headingText(20.0, '#41474f', 'What to expect!'),
          ),
          Padding(
              padding: EdgeInsets.fromLTRB(18, 10, 18, 20),
              child: Text(

                  'Curabitur blandit tempus porttitor. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras mattis consectetur purus sit amet fermentum. Etiam porta sem malesuada magna mollis euismod. Lorem ipsum dolor sit amet, consectetur adipiscing elis.',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    color: HexColor('#41474f'),
                    fontSize: 12,
                    fontFamily: 'assets/fonts/circularstd_book.otf' ,
                    height: 1.5,
                  )))
        ],
      ),
    ));
  }

  _headingText(double size, String txtcolor, String text) {
    return (Text(
      text,
      style: TextStyle(
          fontSize: size,
          fontWeight: FontWeight.bold,
          color: HexColor(txtcolor)),
    ));
  }

  _offerTag(String actualprice, String offerprice, String color) {
    return Container(
      child: (Row(
        children: [
          Icon(
            Tag.price_tag,
            size: 14,
            color: HexColor(color),
          ),
          SizedBox(
            width: 5,
          ),
          RichText(
            text: TextSpan(
              style: DefaultTextStyle.of(context).style,
              children: <TextSpan>[
                TextSpan(
                    text: 'From INR 2,90,000',
                    style: TextStyle(
                        color: HexColor('#adbac8'),
                        fontSize: 12,
                        decoration: TextDecoration.lineThrough)),
                TextSpan(
                    text: '  INR 1,90,000 ',
                    style: TextStyle(
                        color: HexColor('#4ca74a'),
                        fontSize: 18,
                        fontWeight: FontWeight.bold)),
              ],
            ),
          )
        ],
      )),
    );
  }

  _iconWithText(
      IconData access_time, String text, String iconColor, double txtsize,
      {String txtColor}) {
    return (Row(
      children: [
        Icon(
          access_time,
          size: 14,
          color: HexColor(iconColor),
        ),
        SizedBox(
          width: 4,
        ),
        Text(
          text,
          style: TextStyle(
            color: HexColor(txtColor),
            fontSize: txtsize,
          ),
        )
      ],
    ));
  }

  _LeftRightAlignText({String left, String right}) {
    return (Row(
      children: [
        _headingText(12.0, "#41474f", left),
        Spacer(),
        Expanded(
          child: Text(
            right,
            textAlign: TextAlign.right,
            style: TextStyle(
              color: HexColor('#41474f'),
            ),
          ),
        )
      ],
    ));
  }

  _LeftTextwithRightList(String lefttxt, IconData icon, List<String> list) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _headingText(12, '#41474f', lefttxt),
        Spacer(),
        Expanded(
          child: Align(
            alignment: Alignment.centerLeft,
            child: ListView.builder(
              itemCount: list.length,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return (Padding(
                  padding: EdgeInsets.fromLTRB(0, 4, 0, 4),
                  child: _iconWithExpandedText(
                      icon, "#ef633b", list[index], 10.2,
                      txtColor: "#41474f"),
                ));
              },
            ),
          ),
        )
      ],
    );
  }

  _iconWithExpandedText(
      IconData icon, String iconColor, String text, double txtsize,
      {String txtColor}) {
    return (Row(
      children: [
        Icon(
          icon,
          size: 14,
          color: HexColor(iconColor),
        ),
        SizedBox(
          width: 4,
        ),
        Expanded(
          child: Text(
            text,
            style: TextStyle(
              color: HexColor(txtColor),
              fontSize: txtsize,
            ),
          ),
        )
      ],
    ));
  }
}
