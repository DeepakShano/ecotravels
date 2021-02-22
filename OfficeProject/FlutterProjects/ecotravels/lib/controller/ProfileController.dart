import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class ProfileController extends GetxController {
  TextEditingController mDOBController;
  TextEditingController mNameController;

  TextEditingController mMobileController;
  TextEditingController mEmailController;

  TextEditingController mAddressController;

  TextEditingController mZipCodeController;

  TextEditingController mPasswordController;

  TextEditingController mConfirmPasswordController;

  var genderController = 'Male'.obs;
  var mGender = ['Male', 'Female', 'Other'];

  RxBool isEditing = false.obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    mDOBController = TextEditingController();
    mNameController = TextEditingController();
    mMobileController = TextEditingController();
    mEmailController = TextEditingController();
    mAddressController = TextEditingController();
    mZipCodeController = TextEditingController();
    mPasswordController = TextEditingController();
    mConfirmPasswordController = TextEditingController();

    mNameController.text = "Srikanth";
    mMobileController.text = "9030161295";
    mEmailController.text = "snettem@mobisprint.com";
    mAddressController.text = "Hyderabad";
    mZipCodeController.text = "524402";
    mDOBController.text = "16-12-1995";
  }
}
