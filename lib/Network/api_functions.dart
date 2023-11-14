import 'package:flutter/cupertino.dart';
import 'package:http/http.dart'as http;
import 'package:http/http.dart';


class ApiFunction{
  static const String baseUrl = 'http://www.zolenimoving.com/';
  static const String login = '${baseUrl}loginApi';
  static const String register = '${baseUrl}registerApi';
  static const String getProfileData = '${baseUrl}editprofileApi';
  static const String changePassword = '${baseUrl}changepasswordApi';
  static const String countryList = '${baseUrl}countryApi';
  static const String orderList = '${baseUrl}apis/d2details/get';
  static const String promoCode = '${baseUrl}apis/code/get';
  static const String packageList = '${baseUrl}apis/box/get';
  static const String addressList = '${baseUrl}apis/parkingguide/get';
  static const String secretkeyforstripe = 'sk_test_51O3EYQSFHJG0UrM0w33qLPzf7CpGXuLL0AhHdjlzNu1OeTwI3WVDSAlkyq3rqOtJAgD2Z5LS8TGezWD5bkMT2vpj00wpAgtvI9';



  Future<Response> globalMethod(url,jsonParam) async {
    debugPrint(jsonParam.toString());

    debugPrint(url.toString());
    var response = await http.post(
        Uri.parse(url),
        body: jsonParam
    );
    debugPrint('response.statusCode.toString()');
    debugPrint(response.statusCode.toString());
    if(response.statusCode ==200){
      return response;
    }else{
      throw response.reasonPhrase.toString();
    }
  }
  Future<Response> getMethod(url) async {
    debugPrint(url.toString());
    var response = await http.get(Uri.parse(url));
    debugPrint('response.statusCode.toString()');
    debugPrint(response.statusCode.toString());
    if(response.statusCode ==200){
      return response;
    }else{
      throw response.reasonPhrase.toString();
    }
  }

}