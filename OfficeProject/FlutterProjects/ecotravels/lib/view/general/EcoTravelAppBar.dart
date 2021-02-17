

import 'package:ecotravels/helper/HexColor.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EcoTravelAppBAr {

  static Widget appBar(String title, String ImgUrl,bool visiblity) {
    return SliverAppBar(
      backgroundColor: Colors.white10,
      expandedHeight: 220,
      pinned: true,
      leading: Center(
        child: InkWell(
          onTap: () {
            Get.back();
          },
          child: Visibility(
            visible:visiblity,
            child: CircleAvatar(
              radius: 10.0,
              backgroundColor: Colors.white,
              child: Center(
                child: Icon(
                  Icons.arrow_back_ios_outlined,
                  size: 10,
                  color: Colors.grey,
                ),
              ),
            ),
          ),
        ),
      ),
      flexibleSpace: FlexibleSpaceBar(
centerTitle: true,
        title: Text(title,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 30,
          color: Colors.white
        ),),
        background: Image(
          image: NetworkImage(
              ImgUrl),
          fit: BoxFit.cover,
          height: double.infinity,
          width: double.infinity,
        ),
      ),
    );
  }
}
