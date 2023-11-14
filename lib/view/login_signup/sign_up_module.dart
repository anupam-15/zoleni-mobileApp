import 'package:get/get.dart';
import 'package:zoleni/controller/home_controller.dart';


import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zoleni/view/login_signup/signup_screen.dart';
import 'package:zoleni/view/product/product_information.dart';

import '../../constant/appcolors.dart';



import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zoleni/view/product/product_information.dart';

import '../../../exports/get_export.dart';
import '../../exports/globle_exports.dart';
import '../widgets/appbar.dart';

class SignUpModule extends StatefulWidget {
  const SignUpModule({super.key});

  @override
  State<SignUpModule> createState() => _SignUpModuleState();
}

class _SignUpModuleState extends State<SignUpModule> {
  final HomeController homeController = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(icon: Icon(Icons.arrow_back_ios,color: Colors.white),
            onPressed: (){
              Get.back();
            }
        ),
      ),
      backgroundColor: AppColors.AppOrangeColor,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                margin: EdgeInsets.only(top: 100.0),
                child: Align(
                  alignment: Alignment.center,
                  child: Image.asset(
                    "assets/images/Zoloni_logo_white.png",
                    height: 40,
                  ),
                ),
              ),
              SizedBox(
                height: 100.0,
              ),
              Container(
                height: 500.0,
                margin: EdgeInsets.symmetric(horizontal: 50.0),
                child: Center(
                  child: ListView(
                    padding: const EdgeInsets.all(12.0),
                    children: [
                      OutlinedButton(
                        style: ButtonStyle(
                          backgroundColor: homeController.signUpbuttonClicked
                              ? MaterialStateProperty.all<Color>(Colors.white)
                              : MaterialStateProperty.all<Color>(Colors.transparent),
                          side: MaterialStateProperty.all<BorderSide>(
                            BorderSide(color: Colors.white, width: 1.0),

                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SignUpScreen(
                                      module: 'client'
                                  )));
                        },
                        child: Ink(
                          decoration: BoxDecoration(
                            color: homeController.signUpbuttonClicked ? Colors.white : Colors.transparent,
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              vertical: 12.0,
                              horizontal: 32.0,
                            ),

                            child: Text(
                              'Sign Up as Client',
                              style: TextStyle(
                                color:
                                homeController.signUpbuttonClicked ? AppColors.AppOrangeColor : Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      OutlinedButton(
                        style: ButtonStyle(
                          backgroundColor: homeController.signUpbuttonClicked
                              ? MaterialStateProperty.all<Color>(Colors.white)
                              : MaterialStateProperty.all<Color>(Colors.transparent),
                          side: MaterialStateProperty.all<BorderSide>(
                            BorderSide(color: Colors.white, width: 1.0),

                          ),
                        ),
                        onPressed: () {},
                        child: Ink(
                          decoration: BoxDecoration(
                            color: homeController.signUpbuttonClicked ? Colors.white : Colors.transparent,
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              vertical: 12.0,
                              horizontal: 32.0,
                            ),

                            child: Text(
                              'Sign Up as Driver',
                              style: TextStyle(
                                color:
                                homeController.signUpbuttonClicked ? AppColors.AppOrangeColor : Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      OutlinedButton(
                        style: ButtonStyle(
                          backgroundColor: homeController.signUpbuttonClicked
                              ? MaterialStateProperty.all<Color>(Colors.white)
                              : MaterialStateProperty.all<Color>(Colors.transparent),
                          side: MaterialStateProperty.all<BorderSide>(
                            BorderSide(color: Colors.white, width: 1.0),

                          ),
                        ),
                        onPressed: () {},
                        child: Ink(
                          decoration: BoxDecoration(
                            color: homeController.signUpbuttonClicked ? Colors.white : Colors.transparent,
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              vertical: 12.0,
                              horizontal: 32.0,
                            ),

                            child: Text(
                              'Sign Up as Storage',
                              style: TextStyle(
                                color:
                                homeController.signUpbuttonClicked ? AppColors.AppOrangeColor : Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      OutlinedButton(
                        style: ButtonStyle(
                          backgroundColor: homeController.signUpbuttonClicked
                              ? MaterialStateProperty.all<Color>(Colors.white)
                              : MaterialStateProperty.all<Color>(Colors.transparent),
                          side: MaterialStateProperty.all<BorderSide>(
                            BorderSide(color: Colors.white, width: 1.0),

                          ),
                        ),
                        onPressed: () {},
                        child: Ink(
                          decoration: BoxDecoration(
                            color: homeController.signUpbuttonClicked ? Colors.white : Colors.transparent,
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              vertical: 12.0,
                              horizontal: 32.0,
                            ),

                            child: Text(
                              'Sign Up as Concierge',
                              style: TextStyle(
                                color:
                                homeController.signUpbuttonClicked ? AppColors.AppOrangeColor : Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      OutlinedButton(
                        style: ButtonStyle(
                          backgroundColor: homeController.signUpbuttonClicked
                              ? MaterialStateProperty.all<Color>(Colors.white)
                              : MaterialStateProperty.all<Color>(Colors.transparent),
                          side: MaterialStateProperty.all<BorderSide>(
                            BorderSide(color: Colors.white, width: 1.0),

                          ),
                        ),
                        onPressed: () {},
                        child: Ink(
                          decoration: BoxDecoration(
                            color: homeController.signUpbuttonClicked ? Colors.white : Colors.transparent,
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              vertical: 12.0,
                              horizontal: 32.0,
                            ),

                            child: Text(
                              'Sign Up as Broker',
                              style: TextStyle(
                                color:
                                homeController.signUpbuttonClicked ? AppColors.AppOrangeColor : Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

