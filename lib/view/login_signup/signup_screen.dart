
import 'package:get/get.dart';
import 'package:zoleni/controller/home_controller.dart';
import 'package:zoleni/controller/login_controller.dart';
import 'package:zoleni/model/login_response_model.dart';
import 'package:zoleni/model/response_model.dart';
import 'package:zoleni/view/login_signup/log_in_module.dart';



import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zoleni/view/login_signup/login_screen.dart';
import 'package:zoleni/view/product/product_information.dart';

import '../../constant/appcolors.dart';

 

import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zoleni/view/product/product_information.dart';

import '../../exports/globle_exports.dart';
import '../../../exports/get_export.dart';
import '../widgets/appbar.dart';
import 'home_screen.dart';

class SignUpScreen extends StatefulWidget {
  final String module;
  const SignUpScreen({super.key, required this.module});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {

  final AuthController authController = Get.put(AuthController());
  final HomeController homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#FD6802"),
      body: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 60,
                  ),
                  Image.asset(
                    "assets/images/Zoloni_logo_white.png",
                    height: 40,
                  ),
                  SizedBox(
                    height: 60,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 51,
                            width: 175,
                            child: ElevatedButton(
                              onPressed: () {

                                  authController.isBusiness = false;
                                  authController.showBusinessNameField = false;
                                  print(authController.isBusiness);
                              Get.forceAppUpdate();
                              },
                              child: Text(
                                "Personal",
                                style: TextStyle(
                                  // color: AppColors.AppOrangeColor,
                                  color: authController.isBusiness
                                      ? HexColor("#FD6802")
                                      : Colors.white,
                                ),
                              ),
                              style: ElevatedButton.styleFrom(
                                // primary: Colors.white,
                                primary: authController.isBusiness
                                    ? Colors.white
                                    : HexColor("#FD6802"),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25.0),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Container(
                            height: 51,
                            width: 175,
                            child: ElevatedButton(
                              onPressed: () {

                                authController.isBusiness = true;
                                authController.showBusinessNameField = true;
                                print(authController.isBusiness);
                                Get.forceAppUpdate();

                              },
                              child: Text(
                                "Business",
                                style: TextStyle(
                                  //color: AppColors.AppOrangeColor,
                                  color: authController.isBusiness
                                      ? Colors.white
                                      : HexColor("#FD6802"),
                                ),
                              ),
                              style: ElevatedButton.styleFrom(
                                // primary: Colors.white,
                                primary: authController.isBusiness
                                    ? HexColor("#FD6802")
                                    : Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25.0),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  if (authController.showBusinessNameField)
                    TextFormField(
                      controller: authController.businessNameController,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        labelText: 'Business Name*',
                        labelStyle: TextStyle(
                          color: Colors.white,
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                      ),
                      style: TextStyle(color: Colors.white),
                    ),
                  SizedBox(
                    height: 5,
                  ),
                  TextFormField(
                    controller: authController.firstnameController,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      labelText: 'First Name*',
                      labelStyle: TextStyle(
                        color: Colors.white,
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                    ),
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  TextFormField(
                    controller: authController.lastnameController,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      labelText: 'Last Name*',
                      labelStyle: TextStyle(
                        color: Colors.white,
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                    ),
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  TextFormField(
                    controller: authController.emailController,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      labelText: 'Email',
                      labelStyle: TextStyle(
                        color: Colors.white,
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                    ),
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  TextFormField(
                    controller: authController.passwordController,
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: true
                    ,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      labelStyle: TextStyle(
                        color: Colors.white,
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                    ),
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  TextFormField(
                    controller: authController.rePasswordController,
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: 'Retype-Password',
                      labelStyle: TextStyle(
                        color: Colors.white,
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                    ),
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Theme(
                        data: ThemeData(
                          unselectedWidgetColor: Colors.white,
                        ),
                        child: Container(
                          width: 24.0,
                          height: 24.0,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.white,
                            ),
                          ),
                          child: Checkbox(
                            value: authController.isAgreed,
                            onChanged: (value) {
                                authController.isAgreed = value!;
                              Get.forceAppUpdate();
                            },
                            shape: CircleBorder(),
                            activeColor: Colors.white,
                            checkColor: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'I agree that I have read and accepted the \n Terms and Conditions.',
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Container(
                    height: 51,
                    width: 168,
                    child: ElevatedButton(
                      onPressed: () async {

                       /* Navigator.of(context).pushAndRemoveUntil(
                            MaterialPageRoute(
                                builder: (context) =>
                                    HomeScreen(userId: '61')),
                                (Route<dynamic> route) => false);*/

                        bool isValidEmail =
                            await authController.emailValidate(
                                authController.emailController.text);
                        if (isValidEmail == false) {
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              content: Text('please enter valid email')));
                        } else {
                          if(authController.isAgreed == false){
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                content: Text('please agree to terms & conditions')));
                          }else{
                            showDialog(
                              context: context,
                              builder: (context) {
                                return Center(
                                  child: CircularProgressIndicator(),
                                );
                              },
                              barrierDismissible: false,
                            );

                            if(widget.module == 'client'){
                              ResponseModel signUpResponseModel = await authController.registerAuth(
                                authController.businessTypeController.text,
                                authController.firstnameController.text,
                                authController.lastnameController.text,
                                authController.businessNameController.text,
                                authController.emailController.text,
                                authController.passwordController.text,
                              );
                              Navigator.pop(context);
                              if (signUpResponseModel.result != 'success') {
                                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                  content: Text(signUpResponseModel.msg),
                                  action: SnackBarAction(
                                    label: 'go for login',
                                    onPressed: () {
                                      Navigator.of(context).pushAndRemoveUntil(
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  LoginScreen(module: widget.module)),
                                              (Route<dynamic> route) => false);
                                    },
                                  ),
                                  //backgroundColor: Colors.redAccent,
                                ));
                              } else {
                                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                  content: Text(signUpResponseModel.msg),
                                  //backgroundColor: Colors.redAccent,
                                ));
                              }
                            }
                          }

                        }
                      },
                      child: Text(
                        "SIGNUP",
                        style: TextStyle(
                          color: AppColors.AppOrangeColor,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Container(
                      alignment: Alignment.center,
                      child: Text(
                        "Already have an account?",
                        style: TextStyle(color: Colors.white),
                      )),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LogInModule()));
                      },
                      child: Text(
                        "Login",
                        style: TextStyle(color: Colors.white),
                      )),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
