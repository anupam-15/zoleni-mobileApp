



import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zoleni/controller/login_controller.dart';
import 'package:zoleni/controller/profile_controller.dart';
import 'package:zoleni/model/response_model.dart';
import 'package:zoleni/view/product/product_information.dart';

import '../../constant/appcolors.dart';

 

import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zoleni/view/product/product_information.dart';

import '../../../exports/get_export.dart';
import '../../controller/home_controller.dart';
import '../../exports/globle_exports.dart';
import '../widgets/appbar.dart';


class ChangePassword extends StatefulWidget {
  const ChangePassword({super.key});

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  final ProfileController profileController = Get.put(ProfileController());
  final AuthController authController = Get.put(AuthController());
  final HomeController homeController = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(60.0),
          child: MyAppBar(
            title: 'Change Password',
          )),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        TextFormField(
                          keyboardType: TextInputType.visiblePassword,
                          obscureText: true,
                          controller: profileController.newPasswordTextController,
                          decoration: InputDecoration(
                            labelText: 'Enter New Password *',
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: Container(
                  height: 51,
                  width: 168,
                  child: ElevatedButton(
                    onPressed: () async {
                      String userId = await homeController.getUserId();
                      ResponseModel responseModel = await authController.changePassword(
                          userId,
                        profileController.newPasswordTextController.text,
                      );

                      debugPrint('status.toString()');
                      debugPrint(responseModel.result.toString());
                      if(responseModel.result == 'success'){
                        ScaffoldMessenger.of(context)
                            .showSnackBar(SnackBar(content: Text(responseModel.msg)));
                        profileController.newPasswordTextController.clear();
                      }
                    },
                    child: Text(
                      "Update",
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
