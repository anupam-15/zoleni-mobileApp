
import 'dart:convert';

import 'package:image_picker/image_picker.dart';
import 'package:zoleni/Network/api_functions.dart';
import 'package:zoleni/controller/home_controller.dart';
import 'package:zoleni/model/order_list_model.dart';

import '../exports/get_export.dart';
import '../exports/globle_exports.dart';
import '../model/country_list_model.dart';
import '../model/profile_response_model.dart';
import '../model/response_model.dart';


class ProfileController extends GetxController{
  String? selectGender;
  String? selectOrderType;
  String? selectCountry;
  String? selectState;
  final ImagePicker _picker = ImagePicker();
  XFile? selectedImage;
  String? imageName;
  TextEditingController imagePathController = TextEditingController();
  TextEditingController firstNameTextController = TextEditingController();
  TextEditingController lastNameTextController = TextEditingController();
  TextEditingController stateNameTextController = TextEditingController();
  TextEditingController cityNameTextController = TextEditingController();


  TextEditingController newPasswordTextController = TextEditingController();



  Future<List<Datum>> getCountryList() async {
    var json = {
      'get': '1'
    };
    var response = await ApiFunction().globalMethod(ApiFunction.countryList,json);
    // print('CountryListResponse');
    // print(response.body);
    CountryListModel countryListModel = CountryListModel.fromJson(jsonDecode(response.body));
    update();
    return countryListModel.data;
  }
  void getProfileData() async {
    String userId = await HomeController().getUserId();
    var json = {
      'get':'1',
      'user_id': userId
    };
    var response = await ApiFunction().globalMethod(ApiFunction.getProfileData,json);
    print('getProfileData');
    print(response.body);
    ProfileResponseModel profileResponseModel = profileResponseModelFromJson(response.body);
    if(profileResponseModel.result == 'success'){
      print('object');
      firstNameTextController.text = profileResponseModel.data.fname;
      lastNameTextController.text = profileResponseModel.data.lname;
      List<Datum> countryList = await getCountryList();
      selectCountry = countryList.firstWhere((element)
      => element.name ==
          profileResponseModel.data.country).name.toString();
      update();
      selectGender = profileResponseModel.data.gender;
      stateNameTextController.text = profileResponseModel.data.state;
      cityNameTextController.text = profileResponseModel.data.city;
    }
    update();

  }
  Future<List<dynamic>> getOrderList() async {
    var response = await ApiFunction().getMethod(ApiFunction.orderList);
    //debugPrint('OrderListResponse');
    //debugPrint(response.body);
    OrderListModel orderListModel = OrderListModel.fromJson(jsonDecode(response.body));
    print(orderListModel.status);
    update();
    return orderListModel.data.data;
/*    if(orderListModel.data.data == []){
      update();
      return [];
    }else{
      List<Order> orderList = orderListModel.data.data;
      update();
      print('orderList');
      print(orderList);
      return orderList;
    }*/
    return [];
  }
  Future<void> pickImage() async {
    final pickedImage = await _picker.pickImage(source: ImageSource.gallery);

    selectedImage = pickedImage;
    if (pickedImage != null) {
      imageName = pickedImage.name;
      imagePathController.text = pickedImage.path;
    }
    update();
  }

  Future<ResponseModel> updateProfile(
      String userId,
      String fname,
      String lname,
      String gender,
      String image,
      String country,
      String state,
      String city,
      ) async {
    var json = {
      'submit': '1',
      'user_id': userId,
      'fname':fname,
      'lname': lname,
      'gender': gender,
      'image': image,
      'country': country,
      'state': state,
      'city': city,
      'dob' :""
    };
    var response = await ApiFunction().globalMethod(ApiFunction.getProfileData,json);
    debugPrint(response.body);
    ResponseModel responseModel = ResponseModel.fromJson(jsonDecode(response.body));
    return responseModel;
    //update();
  }
}