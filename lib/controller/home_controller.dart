import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:zoleni/controller/login_controller.dart';
import 'package:zoleni/controller/profile_controller.dart';

import '../Network/api_functions.dart';
import '../constant/shared_preference.dart';
import '../model/login_response_model.dart';
import '../model/promo_code_response_model.dart';

class HomeController extends GetxController{
  bool loginButtonClicked = false;
  bool signUpbuttonClicked = false;



  Future<List<PromoCode>> getPromoCode() async {
    var response = await ApiFunction().getMethod(ApiFunction.promoCode);
    debugPrint('response.body');
    debugPrint(response.body);
    if(jsonDecode(response.body)['status'] == 'true'){
      PromoCodeResponseModel promoCodeResponseModel
      = PromoCodeResponseModel.fromJson(jsonDecode(response.body));
      List<PromoCode> promoCodeList = promoCodeResponseModel.data.data;
      update();
      return promoCodeList;
    }else{
      throw jsonDecode(response.body)['err'];
    }
  }
  setUserId(userId)async{
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setString(SharedPref.USER_ID, userId);
  }
  Future<String> getUserId()async{
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    var userId = sharedPreferences.getString(SharedPref.USER_ID).toString();
    return userId;
  }

  setEmail(email)async{
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setString(SharedPref.EMAIL, email);
  }
  Future<String> getEmail()async{
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    var email = sharedPreferences.getString(SharedPref.EMAIL).toString();
    return email;
  }

  setUserRefId(email)async{
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setString(SharedPref.EMAIL, email);
  }
  Future<String> getUserRefId()async{
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    var email = sharedPreferences.getString(SharedPref.EMAIL).toString();
    return email;
  }

  setUserType(email)async{
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setString(SharedPref.EMAIL, email);
  }
  Future<String> getUserType()async{
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    var email = sharedPreferences.getString(SharedPref.EMAIL).toString();
    return email;
  }
/*  Future<void> onGooglePayResult(paymentResult) async {
    final response = await fetchPaymentIntentClientSecret();
    final clientSecret = response['clientSecret'];
    final token = paymentResult['paymentMethodData']['tokenizationData']['token'];
    final tokenJson = Map.castFrom(json.decode(token));

    final params = PaymentMethodParams.cardFromToken(
      token: tokenJson['id'],
    );
    // Confirm Google pay payment method
    await Stripe.instance.confirmPayment(
      clientSecret,
      params,
    );
  }*/

}