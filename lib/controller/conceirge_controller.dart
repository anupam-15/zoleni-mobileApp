import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:zoleni/Network/api_functions.dart';
import 'package:zoleni/exports/globle_exports.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import 'package:get/get.dart';
import 'package:zoleni/model/parking_address_response_model.dart';
import '../model/package_response_model.dart';
import '../model/payment_method_model.dart';

class ConceirgeController extends GetxController{


  late TabController tabController;
  TextEditingController senderNameController = TextEditingController();
  TextEditingController senderPhoneController = TextEditingController();
  TextEditingController receiverNameController = TextEditingController();
  TextEditingController receiverPhoneController = TextEditingController();
  TextEditingController receiverEmailController = TextEditingController();
  TextEditingController addressTextController = TextEditingController();


  var selectedIndex;
  bool isAgreed = false;
  bool isAgreeds = false;
  String? selectedPackage;
  String? selectedOption2;
  String? selectedOption;
  String? selectedOpt;
  List<String> options = ['Air Conditioning', 'Cleaner', 'Security Guard'];
  double checkOutAmount = 5000000.00;
  double promoCodeAmount = 0;
  late final double originalAmount;

  String? addressString;


  bool validateEmail(TextEditingController value) {
    if (value.text != '' &&
        value.text.isNotEmpty &&
        value.text.isEmail) {
      return true;
    } else {
      return false;
    }
  }

  bool validatePhone(TextEditingController value) {
    if (value.text != '' &&
        value.text.isNotEmpty) {
      return true;
    } else {
      return false;
    }
  }
  bool validateFullName(TextEditingController value) {
    if (value.text != '' &&
        value.text.isNotEmpty) {
      return true;
    } else {
      return false;
    }
  }
  createPaymentIntent(double amount)async{

    try{
      Map<String,dynamic> body={
        'amount': "${amount.toInt()}",
        'currency': 'USD'
      };
      http.Response response = await http.post(
          Uri.parse('https://api.stripe.com/v1/payment_intents'),
          body: body,
          headers: {
            "Authorization": "Bearer sk_test_51O3EYQSFHJG0UrM0w33qLPzf7CpGXuLL0AhHdjlzNu1OeTwI3WVDSAlkyq3rqOtJAgD2Z5LS8TGezWD5bkMT2vpj00wpAgtvI9",
            "Content-Type": "application/x-www-form-urlencoded"
          }
      );
      jsonEncode('paymentIntent');
      //debugPrint(response.body);
      return jsonDecode(response.body);
    }catch(e){
      throw Exception(e.toString());
    }
  }
  void displayPaymentSheet()async{
    try{
      print('done');

      await Stripe.instance.presentPaymentSheet();
      update();
      print('done');
    }catch(e){
      print('except');
      print(e);
    }
  }
  void makePayment(double amount)async{
    try{
      paymentIntent = await createPaymentIntent(amount);
      jsonEncode('paymentIntent');
      jsonEncode(paymentIntent);
      var gpay = PaymentSheetGooglePay(
          merchantCountryCode: 'US',
          currencyCode: "USD",
          testEnv: true
      );


      debugPrint("paymentIntent!['client_secret']");
      debugPrint(paymentIntent!['client_secret']);
      await Stripe.instance.initPaymentSheet(
        paymentSheetParameters: SetupPaymentSheetParameters(
            paymentIntentClientSecret: paymentIntent!['client_secret'],
            style: ThemeMode.dark,
            allowsDelayedPaymentMethods: true,
            merchantDisplayName: 'Zoleni',

            googlePay: gpay
        ),
      );
      print('done');
      update();
      displayPaymentSheet();
      print('done');
    }catch(e){
      print('e');
      print(e.hashCode);
      print(StripeConfigException(e.toString()));
      //print(jsonEncode(e));
      StripeConfigException configException = StripeConfigException(e.toString());
      print('configException');
      print(configException.message);
      print(configException.message.hashCode);
    }

  }

  Map<String,dynamic>? paymentIntent;

  Future<List<PaymentMethodModel>> getPaymentMethodList() async {
    var response = await rootBundle.loadString('assets/payments.json');
    //debugPrint(response);
    List<PaymentMethodModel> paymentMethodList = paymentMethodModelFromJson(response);
    update();
    return paymentMethodList;
  }

  Future<List<PackageData>> getPackageList() async {
    var response = await ApiFunction().getMethod(ApiFunction.packageList);
    //debugPrint(response.body);
    PackageResponseModel packageResponseModel =
        PackageResponseModel.fromJson(jsonDecode(response.body));
    List<PackageData> packageData = packageResponseModel.data.data;
    update();
    return packageData;
  }

/*  Future<List<AddressResponse>> getAddress(address) async {
    var json = {
      'address': address
    };
    var response = await ApiFunction().globalMethod(ApiFunction.addressList,json);
    //debugPrint(response.body);
    ParkingAddressResponseModel parkingAddressResponseModel =
    ParkingAddressResponseModel.fromJson(jsonDecode(response.body));
    addressResponse = parkingAddressResponseModel.data.data;
    update();
    return addressResponse;
  }*/
  var activeIndex;
  checkSelection(index){
    if(activeIndex != index){
      activeIndex = index;
      update();
    }else if(index != 3){
      activeIndex = null;
    }

  }


/*  bool validatePassword(context) {
    if (passwordController.text != '') {
      return true;
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Please enter valid password')));
      return false;
    }
  }

  bool validateFullName(context) {
    if (fullNameEditingController.text != '' &&
        fullNameEditingController.text.isNotEmpty) {
      return true;
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Please enter valid full name')));
      return false;
    }
  }

  bool validateGender(context) {
    if (selectedGender != '') {
      return true;
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Please select gender')));
      return false;
    }
  }

  bool validateCountry(context) {
    if (selectedCountryEditingController.text != '') {
      return true;
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Please select country')));
      return false;
    }
  }

  bool validateDob(context) {
    if (dobEditingController.text != '' &&
        dobEditingController.text.isNotEmpty) {
      return true;
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Please select date of birth')));
      return false;
    }
  }*/

  List<AddressResponse> addressResponse = [];
  Future<List<AddressResponse>> searchResult(String value) async {
    var json ={
      'address': value
    };
    addressResponse =  await ApiFunction().globalMethod(ApiFunction.addressList,json).then((response) {
      ParkingAddressResponseModel parkingAddressResponseModel = ParkingAddressResponseModel.fromJson(jsonDecode(response.body));
      return parkingAddressResponseModel.data.data;

    });
    return addressResponse;
  }
}
