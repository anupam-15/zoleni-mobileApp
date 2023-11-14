import 'package:zoleni/exports/globle_exports.dart';
import 'package:zoleni/controller/conceirge_controller.dart';
import 'package:zoleni/view/conceirge/conceirge_order_package_information.dart';
import 'package:zoleni/view/widgets/appbar.dart';

import '../../exports/get_export.dart';
import '../../exports/globle_exports.dart';
import '../widgets/back_buton.dart';

class ConceirgeOrderRecevier extends StatefulWidget {
  final TabController tabController;
  const ConceirgeOrderRecevier({super.key, required this.tabController});

  @override
  State<ConceirgeOrderRecevier> createState() => _ConceirgeOrderRecevierState();
}

class _ConceirgeOrderRecevierState extends State<ConceirgeOrderRecevier> {
  final ConceirgeController conceirgeController = Get.put(ConceirgeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      appBar: AppBar(
        leading: BackButon(
            onTap: (){
              widget.tabController.animateTo(0);
            }
        ),
        title: Text(
          "Recipient Details",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            color: Colors.black
          ),
        ),
        backgroundColor: Colors.blue[50],
        elevation: 0,
      ),
      body: Container(
        margin: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Card(
              elevation: 3,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    TextFormField(
                      keyboardType: TextInputType.text,
                      controller: conceirgeController.receiverNameController,
                      autofocus: true,
                      cursorColor: HexColor('#737373'),
                      decoration: InputDecoration(
                          border: UnderlineInputBorder(borderSide: BorderSide(color: HexColor('#737373'))),
                          floatingLabelAlignment: FloatingLabelAlignment.start,
                          floatingLabelBehavior: FloatingLabelBehavior.auto,
                          labelText: "Name",
                          focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: HexColor('#737373'))),
                          labelStyle: TextStyle(color: HexColor('#737373')),
                          hintText: "type here"),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.phone,
                      controller: conceirgeController.receiverPhoneController,
                      cursorColor: HexColor('#737373'),
                      decoration: InputDecoration(
                          border: UnderlineInputBorder(borderSide: BorderSide(color: HexColor('#737373'))),
                          floatingLabelAlignment: FloatingLabelAlignment.start,
                          floatingLabelBehavior: FloatingLabelBehavior.auto,
                          labelText: "Phone Number",
                          focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: HexColor('#737373'))),
                          labelStyle: TextStyle(color: HexColor('#737373')),
                          hintText: "type here"),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      controller: conceirgeController.receiverEmailController,
                      cursorColor: HexColor('#737373'),
                      decoration: InputDecoration(
                          border: UnderlineInputBorder(borderSide: BorderSide(color: HexColor('#737373'))),
                          floatingLabelAlignment: FloatingLabelAlignment.start,
                          floatingLabelBehavior: FloatingLabelBehavior.auto,
                          labelText: "Email",
                          focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: HexColor('#737373'))),
                          labelStyle: TextStyle(color: HexColor('#737373')),
                          hintText: "type here"),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 51,
                  width: 168,
                  child: ElevatedButton(
                    onPressed: () {
                      bool isNameValidated = conceirgeController.validateFullName(
                          conceirgeController.receiverNameController
                      );
                      if(isNameValidated == true) {
                        bool isPhoneValidated = conceirgeController
                            .validatePhone(
                            conceirgeController.receiverPhoneController
                        );
                        if (isPhoneValidated == true) {
                          bool isEmailValidated = conceirgeController
                              .validateEmail(
                              conceirgeController.receiverEmailController
                          );
                          if(isEmailValidated == true){
                            debugPrint('pressed');
                            FocusManager.instance.primaryFocus?.unfocus();
                            widget.tabController.animateTo(2);
                          }else{
                            FocusManager.instance.primaryFocus?.unfocus();
                            ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(content: Text('Please enter valid email')));
                          }
                        }else{
                          FocusManager.instance.primaryFocus?.unfocus();
                          ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text('Please enter valid phone Number')));
                        }
                      }else{
                        FocusManager.instance.primaryFocus?.unfocus();
                        ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text('Please enter valid full name')));
                      }

                    },
                    child: Text(
                      "Next",
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
            )
          ],
        ),
      )
    );
  }
}
