import 'package:get/get.dart';
import 'package:zoleni/controller/home_controller.dart';


import 'package:zoleni/view/login_signup/signup_screen.dart';

import '../../controller/login_controller.dart';




import '../../exports/globle_exports.dart';
import '../../../exports/get_export.dart';
import '../../model/login_response_model.dart';
import 'home_screen.dart';
class LoginScreen extends StatefulWidget {
  final String module;
  const LoginScreen({super.key, required this.module});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final String keyName = 'assets/images/logo.svg';
  final AuthController loginController = Get.put(AuthController());
  final HomeController homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: ()async{
        Get.back();
        return false;
      },
      child: Scaffold(
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
        backgroundColor: HexColor("#FD6802"),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/images/Zoloni_logo_white.png",
                    height: 40,
                  ),
                  SizedBox(
                    height: 80,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    controller: loginController.emailController,
                    decoration: InputDecoration(
                      suffixIcon: Icon(
                        Icons.email,
                        color: Colors.white,
                      ),
                      labelText: 'Email',
                      labelStyle: TextStyle(
                        color: Colors.white,
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                    ),
                    onChanged: (value) async {},
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(height: 10),
                  TextFormField(
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: true,
                    controller: loginController.passwordController,
                    decoration: InputDecoration(
                        suffixIcon: Icon(
                          Icons.key_outlined,
                          color: Colors.white,
                        ),
                        // suffixIcon: SvgPicture.asset(
                        //   //keyName,
                        //   "assets/images/passwordicon.svg",
                        //   color: Colors.white,
                        //
                        // ),
                        labelText: "Password",
                        labelStyle: TextStyle(
                          color: Colors.white,
                        ),
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white))),
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: (){
                          showDialog(
                              context: context,
                              builder: (context){
                                return Dialog.fullscreen(
                                  child: Scaffold(
                                    appBar: AppBar(
                                      title: Text('Forgot Password'),
                                      centerTitle: false,
                                      backgroundColor: Colors.deepOrange,
                                      automaticallyImplyLeading: true,
                                    ),
                                    body: Column(
                                      children: [
                                        Center(
                                          child: TextFormField(
                                            controller: loginController.emailController,

                                          ),
                                        ),
                                        SizedBox(
                                          height: 50.0,
                                        ),
                                        Container(
                                          height: 51,
                                          width: 168,
                                          child: ElevatedButton(
                                            onPressed: () async {
                                            /*  LoginResponseModel loginResponseModel =
                                                  await loginController.forgotPassword(
                                                  loginController.emailController.text);
                                              if(loginResponseModel.userId != null && loginResponseModel.userId != ''){
                                                showDialog(
                                                    context: context,
                                                    builder: (context){
                                                      return AlertDialog(
                                                        title: Text('Information'),
                                                        content: Text('Your Password is : ${loginData.password}'),
                                                        actions: [
                                                          TextButton(
                                                            onPressed: (){
                                                            Navigator.pop(context);
                                                            Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen(module: 'client')));
                                                          },
                                                            child: Text('Go to Login')
                                                        )],
                                                      );
                                                    }
                                                );
                                              }*/
                                            },
                                            child: Text(
                                              "Get Password",
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
                                      ],
                                    ),
                                  ),
                                );
                              }
                          );
                        },
                        child: Text(
                          "Forgot Password ?",
                          style: TextStyle(color: Colors.white),
                        ),
                      )),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 51,
                    width: 168,
                    child: ElevatedButton(
                      onPressed: () async {

                        /*await homeController.setUserId('61');
                        Navigator.of(context).pushAndRemoveUntil(
                            MaterialPageRoute(
                                builder: (context) =>
                                    HomeScreen(userId: '61')),
                                (Route<dynamic> route) => false);*/
                        bool isValidEmail = await loginController
                            .emailValidate(loginController.emailController.text);
                        if (isValidEmail == false) {
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              content: Text('please enter valid email')));
                        } else {
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
                            LoginResponseModel loginResponseModel =
                            await loginController.loginWithEmailAndPassword(
                                loginController.emailController.text,
                                loginController.passwordController.text);
                            Navigator.pop(context);
                            if (loginResponseModel.userId != '' && loginResponseModel.userId != null) {
                              await homeController.setUserId(loginResponseModel.userId);
                              await homeController.setEmail(loginResponseModel.userEmail);
                              await homeController.setUserRefId(loginResponseModel.userRefid);
                              await homeController.setUserType(loginResponseModel.userType);
                              Navigator.of(context).pushAndRemoveUntil(
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          HomeScreen(userId: loginResponseModel.userId.toString())),
                                      (Route<dynamic> route) => false);
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                content: Text(loginResponseModel.msg),
                                //backgroundColor: Colors.redAccent,
                              ));
                            }
                          }
                          // print(loginData);

                        }
                      },
                      child: Text(
                        "LOGIN",
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
                        "Don't have an account?",
                        style: TextStyle(color: Colors.white),
                      )),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignUpScreen(module: widget.module,)));
                      },
                      child: Text(
                        "Create Account",
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
