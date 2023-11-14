import 'package:zoleni/exports/globle_exports.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:zoleni/controller/conceirge_controller.dart';
import 'package:zoleni/controller/conceirge_controller.dart';
import 'package:zoleni/view/conceirge/conceirge_order_recevier.dart';

import '../../exports/get_export.dart';

class SenderDetails extends StatefulWidget {
  final TabController tabController;
  const SenderDetails({super.key, required this.tabController});

  @override
  State<SenderDetails> createState() => _SenderDetailsState();
}

class _SenderDetailsState extends State<SenderDetails> {
  final ConceirgeController conceirgeController = Get.put(ConceirgeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      appBar: AppBar(
        backgroundColor: Colors.blue[50],
        automaticallyImplyLeading: false,
        title: Text(
          "Sender Details",
          style: TextStyle(color: Colors.black,
              fontWeight: FontWeight.bold, fontSize: 18),
        ),
        elevation: 0,
      ),
      body: Container(
        margin: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 200.0,
              child: Card(
                elevation: 0,
                color: Colors.white,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      TextFormField(
                        keyboardType: TextInputType.text,
                        controller: conceirgeController.senderNameController,
                        decoration: InputDecoration(
                            border: UnderlineInputBorder(borderSide: BorderSide(color: HexColor('#737373'))),
                            labelText: "Name",
                            focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: HexColor('#737373'))),
                            labelStyle: TextStyle(color: HexColor('#737373')),
                            hintText: "type here",
                        ),
                        /*onChanged: (value){
                          conceirgeController.senderNameController.text = value.toString();
                          debugPrint('conceirgeController.nameController.text');
                          debugPrint(conceirgeController.senderNameController.text);
                        },*/
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      TextFormField(
                        keyboardType: TextInputType.phone,
                        controller: conceirgeController.senderPhoneController,
                        cursorColor: HexColor('#737373'),
                        decoration: InputDecoration(
                            border: UnderlineInputBorder(borderSide: BorderSide(color: HexColor('#737373'))),
                            floatingLabelAlignment: FloatingLabelAlignment.start,
                            floatingLabelBehavior: FloatingLabelBehavior.auto,
                            labelText: "Phone Number",
                            focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: HexColor('#737373'))),
                            labelStyle: TextStyle(color: HexColor('#737373')),
                            hintText: "type here"),
                        /*onChanged: (value){
                          conceirgeController.senderPhoneController.text = value.toString();
                          debugPrint('conceirgeController.nameController.text');
                          debugPrint(conceirgeController.senderPhoneController.text);
                        },*/
                      ),
                    ],
                  ),
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
                    onPressed: () async {
                      bool isNameValidated = conceirgeController.validateFullName(
                        conceirgeController.senderNameController
                      );
                      if(isNameValidated == true) {
                        bool isPhoneValidated = conceirgeController
                            .validatePhone(
                            conceirgeController.senderPhoneController
                        );
                        if (isPhoneValidated == true) {
                          debugPrint('pressed');
                          FocusManager.instance.primaryFocus?.unfocus();
                          widget.tabController.animateTo(1);
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
      ),
    );
  }
}
