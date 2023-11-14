


import 'package:get/get.dart';
import 'package:zoleni/controller/home_controller.dart';


import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zoleni/view/product/product_information.dart';

import '../../constant/appcolors.dart';

 

import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zoleni/view/product/product_information.dart';

import '../../exports/globle_exports.dart';
import '../../../exports/get_export.dart';
import '../widgets/appbar.dart';
import 'login_screen.dart';

class LogInModule extends StatefulWidget {
  const LogInModule({super.key});

  @override
  State<LogInModule> createState() => _LogInModuleState();
}

class _LogInModuleState extends State<LogInModule> {
  final HomeController homeController = Get.put(HomeController());
  bool loginButtonClicked = false;
  bool signUpbuttonClicked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.AppOrangeColor,
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
                margin: const EdgeInsets.symmetric(horizontal: 50.0),
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
                                  builder: (context) => LoginScreen(
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
                              'Log In as Client',
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
                              'Log In as Driver',
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
                              'Log In as Storage',
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
                              'Log In as Concierge',
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
                              'Log In as Broker',
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
