
import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:zoleni/Network/api_functions.dart';
import 'package:zoleni/model/response_model.dart';
import '../model/login_response_model.dart';

class AuthController extends GetxController{
  TextEditingController businessTypeController = TextEditingController(
      text: 'business'
  );
  TextEditingController businessNameController = TextEditingController(text: '');
  TextEditingController firstnameController = TextEditingController(text: 'ftext');
  TextEditingController lastnameController = TextEditingController(text: 'ltext');
  TextEditingController emailController = TextEditingController(text: 'vidurbusiness@gmail.com');
  TextEditingController passwordController = TextEditingController(text: '123456');
  TextEditingController rePasswordController = TextEditingController();
  bool isBusiness = false;
  bool showBusinessNameField = false;
  bool isAgreed = false;


  bool emailValidate(String value){
    if(value.isEmail){
      return true;
    }else{
      return false;
    }
  }
  //Future<LoginResponseModel> loginWithEmailAndPassword(String email,String password) async {
  Future<LoginResponseModel> loginWithEmailAndPassword(String email,String password) async {
    var json = {
      'submit': '1',
      'email': email,
      'password': password,
    };
    var response = await ApiFunction().globalMethod(ApiFunction.login,json);
    //debugPrint(response.body);
    LoginResponseModel loginResponseModel = LoginResponseModel.fromJson(jsonDecode(response.body));
    update();
    return loginResponseModel;


  }
  Future<LoginResponseModel> forgotPassword(String email, String password) async {
    var json = {
      'submit': '1',
      'email': email,
      'password': password,
    };
    var response = await ApiFunction().globalMethod(ApiFunction.login,json);
    //debugPrint(response.body);
    LoginResponseModel loginResponseModel = LoginResponseModel.fromJson(jsonDecode(response.body));
    if(loginResponseModel.userId != '' && loginResponseModel.userId != null && loginResponseModel.userId.isNotEmpty){
      update();
      return loginResponseModel;
    }else{
      update();
      throw response.reasonPhrase.toString();

    }

  }
  Future<ResponseModel> changePassword(
      String userId,
      String newPassword,
      ) async {
    var json = {
      'user_id': userId,
      'password':newPassword
    };
    var response = await ApiFunction().globalMethod(ApiFunction.changePassword,json);
    debugPrint(response.body);
    ResponseModel responseModel = ResponseModel.fromJson(jsonDecode(response.body));
    return responseModel;

    //update();

  }


  var json;

  Future<ResponseModel> registerAuth(
      String type,String fname,String lname,
      String businessName,
      String email,String password) async {
    if(businessName == '') {

      json = {
        'submit': '1',
        'type': type,
        'fname': fname,
        'lname': lname,
        'email': email,
        'password': password,
      };
      update();
    }else{
      json = {
        'submit': '1',
        'type': type,
        'fname': fname,
        'lname': lname,
        'business_name':businessName,
        'email': email,
        'password': password,
      };
      update();
    }
    var response = await ApiFunction().globalMethod(ApiFunction.register, json);
    debugPrint(response.body);
    ResponseModel signUpResponseModel = ResponseModel.fromJson(jsonDecode(response.body));
    update();
    return signUpResponseModel;

  }
}