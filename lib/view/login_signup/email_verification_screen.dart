
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zoleni/view/widgets/appbar.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zoleni/view/product/product_information.dart';

import '../../exports/globle_exports.dart';
import '../../exports/get_export.dart';
import '../on_going_order_screen.dart';
import '../widgets/appbar.dart';
import '../widgets/datetextformfield.dart';

import '../../constant/appcolors.dart';
import '../../exports/globle_exports.dart';

class EmailVerification extends StatefulWidget {
  const EmailVerification({super.key});

  @override
  State<EmailVerification> createState() => _EmailVerificationState();
}

class _EmailVerificationState extends State<EmailVerification> {
  static const IconData warning = IconData(0xe6cb, fontFamily: 'MaterialIcons');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Card(
                elevation: 5,
                color: HexColor("#D6F6D1"),
                child: Column(
                  children: [
                    Center(
                      child: ImageIcon(
                        AssetImage("assets/images/info_icon 1.png"),
                        color: HexColor("#FD6802"),
                        size: 80,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Registration Successful!",
                      style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text(
                        "An email has been sent to your email address containing email verification link. Please click on the link to verify  your email address. If you do not click  the link your account will remain inactive and you will not receive  further emails. If you do not receive the email within a few minutes, please check your spam folder.",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Open Sans',
                        ),
                        textAlign: TextAlign.justify,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 51,
                      width: 168,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => OnGoingOrderScreen()));
                        },
                        child: Text(
                          "Continue",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: AppColors.AppOrangeColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25.0),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 15,)
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
