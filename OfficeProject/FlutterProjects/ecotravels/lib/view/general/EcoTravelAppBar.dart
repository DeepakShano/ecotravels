

import 'package:ecotravels/helper/HexColor.dart';
import 'package:ecotravels/view/modules/MyVideoPlayer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EcoTravelAppBAr {

  static Widget appBar(String title, String ImgUrl,bool bckBtnvisiblity,bool videoVisiblity) {
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
            visible:bckBtnvisiblity,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
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
      ),
      actions: [
        Visibility(
          visible:videoVisiblity,
          child: Padding(
            padding: const EdgeInsets.all(2),
            child: Container(
              width: 30,
              margin: EdgeInsets.all(12),
              decoration: new BoxDecoration(
                color: HexColor('#4ca74a'),
                borderRadius: BorderRadius.circular(6.0),
              ),
              child: Center(
                child: IconButton(
                  onPressed: (){
                  Get.to( MyVideoPlayer());
                  },
                  icon: Icon(Icons.video_call,
                    size: 15,
                ),

                ),
              ),
            ),
          ),
        )

      ],
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
