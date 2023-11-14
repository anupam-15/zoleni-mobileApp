import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zoleni/exports/globle_exports.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:zoleni/controller/home_controller.dart';
import 'package:zoleni/view/order/cencel_order_screen.dart';
import 'package:zoleni/view/login_signup/email_verification_screen.dart';
import 'package:zoleni/view/login_signup/home_screen.dart';
import 'package:zoleni/view/on_going_order_screen.dart';
import 'package:zoleni/view/ratereview/rate_review_screen.dart';
import 'package:zoleni/view/read_note_screen.dart';
import 'package:zoleni/view/login_signup/welcome_screen.dart';



import 'dart:async';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  Stripe.publishableKey =
  "pk_test_51O3EYQSFHJG0UrM0HZXf23TQCmyLoCOMbfq8wFS0gX63nPcXEWOtbsVxkDRihloCDzTNfOLYKblMgfzJycCWBBkf00MQ2t1M2k";
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (context, orientation, screenType) {
        return GetMaterialApp(
          title: 'Zoleni',
          debugShowCheckedModeBanner: false,
          initialRoute: 'dashboard',
          routes: {
            'welcome_screen': (context) => const WelcomeScreen(),
            'dashboard': (context) => const DashBoard(),
            'email_verification_screen': (context) => const EmailVerification(),
            'on_going_order_screen': (context) => const OnGoingOrderScreen(),
            'read_note_screen': (context) => const ReadNoteScreen(),
            'rate_review_screen': (context) => const RateReviewScreen(),
            'cencel_order_screen': (context) => const CencelOrderScreen(),
          },
          // theme: ThemeData(
          //   colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          //   useMaterial3: true,
          // ),
          //home: const WelcomeScreen(),
        );
      }
    );
  }
}


class DashBoard extends StatefulWidget {
  const DashBoard({super.key});

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  final HomeController homeController = Get.put(HomeController());
  @override
  void initState() {
    SystemChannels.textInput.invokeMethod('TextInput.hide');
    checkIsLogin(context);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#FD6802"),
      body: Center(
        child: Container(
          height: 300.0,
          child: Column(
            children: [
              Image.asset(
                "assets/images/Zoloni_logo_white.png",
                height: 40,
              ),
              const SizedBox(
                height: 80,
              ),
              const CircularProgressIndicator()
            ],
          ),
        ),
      ),
    );
  }
  checkIsLogin(context){
    Future.delayed(const Duration(seconds: 2),()async{
      String userId = await homeController.getUserId();
      if(userId != '' && userId.isNumericOnly){
        Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(
                builder: (context) =>
                    HomeScreen(userId: userId)),
                (Route<dynamic> route) => false);
      }else{
        Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(
                builder: (context) =>
                const WelcomeScreen()),
                (Route<dynamic> route) => false);
      }
    });
  }
}
