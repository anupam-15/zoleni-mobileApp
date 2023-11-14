
import 'package:get/get.dart';
import 'package:zoleni/controller/home_controller.dart';
import 'package:zoleni/view/login_signup/select_module.dart';

import '../../constant/appcolors.dart';
import '../../exports/globle_exports.dart';



class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  final HomeController homeController = Get.put(HomeController());
  bool loginButtonClicked = false;
  bool signUpbuttonClicked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#FD6802"),
      body: Container(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/Zoloni_logo_white.png",
              height: 40,
            ),
            const SizedBox(
              height: 80,
            ),
            Center(
              child: OutlinedButton(
                style: ButtonStyle(
                  backgroundColor: homeController.loginButtonClicked
                      ? MaterialStateProperty.all<Color>(Colors.white)
                      : MaterialStateProperty.all<Color>(Colors.transparent),
                  side: MaterialStateProperty.all<BorderSide>(
                    BorderSide(color: Colors.white, width: 1.0),
                  ),
                ),
                onPressed: () {
                    homeController.loginButtonClicked = homeController.loginButtonClicked;
                 /* Navigator.of(context).push(
                      MaterialPageRoute(builder: (context)=>SelectModule(
                        type: 'signUp'
                      )));*/
                  Get.dialog(SelectModule(
                      type: 'signUp'
                  ));
                    homeController.loginButtonClicked = false;
                    Get.forceAppUpdate();
                },
                child: Ink(
                  decoration: BoxDecoration(
                    color: homeController.loginButtonClicked ? Colors.white : Colors.transparent,
                    borderRadius: BorderRadius.circular(25.0),

                  ),
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      vertical: 12.0,
                      horizontal: 32.0,
                    ),
                    child: Text(
                      'SIGN UP',
                      style: TextStyle(
                        color:
                        homeController.loginButtonClicked ? AppColors.AppOrangeColor : Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: OutlinedButton(
                style: ButtonStyle(
                  backgroundColor: homeController.signUpbuttonClicked
                      ? MaterialStateProperty.all<Color>(Colors.white)
                      : MaterialStateProperty.all<Color>(Colors.transparent),
                  side: MaterialStateProperty.all<BorderSide>(
                    BorderSide(color: Colors.white, width: 1.0),

                  ),
                ),
                onPressed: () {
                    homeController.signUpbuttonClicked = !homeController.signUpbuttonClicked;

                    Get.forceAppUpdate();
                    Get.dialog(SelectModule(
                        type: 'logIn'
                    ));
                 /* Navigator.of(context).push(
                      MaterialPageRoute(builder: (context)=>SelectModule(
                          type: 'logIn'
                      )));*/
                    homeController.signUpbuttonClicked = false;
                    Get.forceAppUpdate();

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
                      'LOGIN',
                      style: TextStyle(
                        color:
                        homeController.signUpbuttonClicked ? AppColors.AppOrangeColor : Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
