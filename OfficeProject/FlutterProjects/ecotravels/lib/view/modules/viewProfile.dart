
import 'package:ecotravels/helper/GlobalClass.dart';
import 'package:ecotravels/helper/HexColor.dart';
import 'package:ecotravels/controller/ProfileController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ViewProfile extends StatelessWidget {
  ProfileController profileController = Get.put(ProfileController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: GlobalClass.appBar("Profile"),
        // appBar: InotaryAppbar.appBar("Finish creating your profile"),
        backgroundColor: Colors.white,
        body: Obx(() {
          return ListView(children: [
            SizedBox(
              height: 20,
            ),
            Center(
              child: Container(
                height: 120,
                width: 120,
                child: Stack(
                  children: [
                    Center(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(60.0),
                        child: Stack(
                          children: [
                            Container(
                              height: 120,
                              width: 120,
                              child: Image.asset(
                                'assets/images/dp.jpg',
                                fit: BoxFit.fill,
                              ),
                              decoration: BoxDecoration(
                                  color: Colors.white, shape: BoxShape.circle),
                            ),
                            Positioned.fill(
                                child: Align(
                              alignment: Alignment.bottomCenter,
                              child: GestureDetector(
                                onTap: () {
                                  print("success");
                                  profileController.isEditing.toggle();
                                },
                                child: Container(
                                  height: 35,
                                  width: 120,
                                  color: Colors.black.withOpacity(0.5),
                                  child: Container(
                                    alignment: Alignment.center,
                                    child: Text(
                                      profileController.isEditing.value != true
                                          ? 'Edit'
                                          : "Update",
                                      style:
                                          TextStyle(color: HexColor('#ff753f')),
                                    ),
                                  ),
                                ),
                              ),
                            )),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(
              height: 20,
            ),

            // Align(
            //   alignment: Alignment.bottomCenter,
            //   child: Container(
            //     width: 150,
            //     height: 50,
            //     child: RaisedButton(
            //       color: Colors.black87,
            //       textColor: Colors.white,
            //       child: Text(
            // profileController.isEditing.value != true
            //     ? 'Edit profile'
            //     : "Update profile",
            //       ),
            //       onPressed: () {
            // profileController.isEditing.toggle();
            //         // Get.to(EditAgentProfile());
            //       },
            //       shape: RoundedRectangleBorder(
            //         borderRadius: BorderRadius.circular(20.0),
            //       ),
            //     ),
            //   ),
            // ),

            SizedBox(
              height: 20,
            ),
            profileController.isEditing.value == true
                ? Padding(
                    padding: const EdgeInsets.fromLTRB(15.0, 5.0, 15.0, 5.0),
                    child: GlobalClass.mTextField(
                        'Name', profileController.mNameController),
                  )
                : Padding(
                    padding: EdgeInsets.all(20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Name",
                            textAlign: TextAlign.left,
                            style: TextStyle(color: HexColor('#41474f'))),
                        SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: Text(profileController.mNameController.text,
                              textAlign: TextAlign.right,
                              style: TextStyle(color: HexColor('#adbac8'))),
                        ),
                      ],
                    ),
                  ),
            profileController.isEditing.value == true
                ? Padding(
                    padding: const EdgeInsets.fromLTRB(15.0, 5.0, 15.0, 5.0),
                    child: GlobalClass.mDropDown(
                        'Gender',
                        profileController.mGender,
                        profileController.genderController),
                  )
                : Padding(
                    padding: EdgeInsets.all(20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Gender", textAlign: TextAlign.left),
                        SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: Text(profileController.genderController.value,
                              // profileController.mNameController.text ,
                              textAlign: TextAlign.right,
                              style: TextStyle(color: HexColor('#adbac8'))),
                        ),
                      ],
                    ),
                  ),
            profileController.isEditing.value == true
                ? Padding(
                    padding: const EdgeInsets.fromLTRB(15.0, 5.0, 15.0, 5.0),
                    child: GlobalClass.mDobField(
                        'DOB', profileController.mDOBController, context),
                  )
                : Padding(
                    padding: EdgeInsets.all(20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("DOB", textAlign: TextAlign.left),
                        SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: Text(profileController.mDOBController.text,
                              // profileController.mNameController.text ,
                              textAlign: TextAlign.right,
                              style: TextStyle(color: HexColor('#adbac8'))),
                        ),
                      ],
                    ),
                  ),
            profileController.isEditing.value == true
                ? Padding(
                    padding: const EdgeInsets.fromLTRB(15.0, 5.0, 15.0, 5.0),
                    child: GlobalClass.mTextField(
                        'Mobile', profileController.mMobileController),
                  )
                : Padding(
                    padding: EdgeInsets.all(20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Mobile",
                            textAlign: TextAlign.left,
                            style: TextStyle(color: HexColor('#41474f'))),
                        SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: Text(profileController.mMobileController.text,
                              textAlign: TextAlign.right,
                              style: TextStyle(color: HexColor('#adbac8'))),
                        ),
                      ],
                    ),
                  ),
            profileController.isEditing.value == true
                ? Padding(
                    padding: const EdgeInsets.fromLTRB(15.0, 5.0, 15.0, 5.0),
                    child: GlobalClass.mTextField(
                        'Email', profileController.mEmailController),
                  )
                : Padding(
                    padding: EdgeInsets.all(20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Email",
                            textAlign: TextAlign.left,
                            style: TextStyle(color: HexColor('#41474f'))),
                        SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: Text(profileController.mEmailController.text,
                              textAlign: TextAlign.right,
                              style: TextStyle(color: HexColor('#adbac8'))),
                        ),
                      ],
                    ),
                  ),
            profileController.isEditing.value == true
                ? Padding(
                    padding: const EdgeInsets.fromLTRB(15.0, 5.0, 15.0, 5.0),
                    child: GlobalClass.mTextField(
                        'Address', profileController.mAddressController),
                  )
                : Padding(
                    padding: EdgeInsets.all(20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Address",
                            textAlign: TextAlign.left,
                            style: TextStyle(color: HexColor('#41474f'))),
                        SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: Text(profileController.mAddressController.text,
                              textAlign: TextAlign.right,
                              style: TextStyle(color: HexColor('#adbac8'))),
                        ),
                      ],
                    ),
                  ),
            profileController.isEditing.value == true
                ? Padding(
                    padding: const EdgeInsets.fromLTRB(15.0, 5.0, 15.0, 5.0),
                    child: GlobalClass.mTextField(
                        'Zip code', profileController.mZipCodeController),
                  )
                : Padding(
                    padding: EdgeInsets.all(20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Zip code",
                            textAlign: TextAlign.left,
                            style: TextStyle(color: HexColor('#41474f'))),
                        SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: Text(profileController.mZipCodeController.text,
                              textAlign: TextAlign.right,
                              style: TextStyle(color: HexColor('#adbac8'))),
                        ),
                      ],
                    ),
                  ),
          ]);
        }));
  }
}
