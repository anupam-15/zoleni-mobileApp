
import 'package:flutter/cupertino.dart';
import 'package:zoleni/exports/globle_exports.dart';
import 'package:get/get.dart';
import 'package:get/route_manager.dart';
import 'package:zoleni/controller/conceirge_controller.dart';
import 'package:zoleni/model/parking_address_response_model.dart';
import 'package:zoleni/view/conceirge/conceirge_order_payment_method.dart';
import 'package:zoleni/view/widgets/appbar.dart';
import 'package:zoleni/view/widgets/search_file.dart';

import '../../exports/globle_exports.dart';
import '../../model/package_response_model.dart';
import '../widgets/back_buton.dart';

class ConceirgeOrderPackageInformation extends StatefulWidget {
  final TabController tabController;
  const ConceirgeOrderPackageInformation({super.key, required this.tabController});

  @override
  State<ConceirgeOrderPackageInformation> createState() =>
      _ConceirgeOrderPackageInformationState();
}

class _ConceirgeOrderPackageInformationState
    extends State<ConceirgeOrderPackageInformation> {
  final ConceirgeController conceirgeController = Get.put(ConceirgeController());


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue[50],
        appBar: AppBar(
          leading: BackButon(
              onTap: (){
                widget.tabController.animateTo(1);
              }
          ),
          title: Text(
            "Package Information",
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
          margin: EdgeInsets.all(12.0),
          child: ListView(
            scrollDirection: Axis.vertical,
            children: [
              Card(
                elevation: 0,
                color: Colors.transparent,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      FutureBuilder<List<PackageData>>(
                        future: conceirgeController.getPackageList(),
                        initialData: [],
                        builder: (BuildContext context,AsyncSnapshot<List<PackageData>> data) {
                          if(data.hasData){
                            final packageList = data.data;
                            return DropdownButton<String>(
                              value: conceirgeController.selectedPackage,
                              onChanged: (String? newValue) {
                                conceirgeController.selectedPackage = newValue;
                                Get.forceAppUpdate();
                              },
                              items: packageList!.map((option) {
                                return DropdownMenuItem<String>(
                                  value: option.id,
                                  child: Text(option.name),
                                );
                              }).toList(),
                              hint: Text('Select'),
                            );
                          }else{
                            return DropdownButton<String>(
                              value: conceirgeController.selectedPackage,
                              onChanged: (String? newValue) {
                                conceirgeController.selectedPackage = newValue;
                                Get.forceAppUpdate();
                              },
                              items: conceirgeController.options.map((String option) {
                                return DropdownMenuItem<String>(
                                  value: option,
                                  child: Text(option),
                                );
                              }).toList(),
                              hint: Text('Select'),
                            );
                          }

                        }
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          ElevatedButton.icon(
                            onPressed: () {},
                            icon: Icon(
                              Icons.add,
                              size: 24.0,
                            ),
                            style: ElevatedButton.styleFrom(
                                backgroundColor: AppColors.AppOrangeColor,
                            ),
                            label: Text('Add Extra Package'),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Find Concierge",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text("Which facility you want?"),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 55,
                        child: DropdownButtonFormField<String>(
                          value: conceirgeController.selectedOption,
                          onChanged: (String? newValue) {
                              conceirgeController.selectedOption = newValue;
                              Get.forceAppUpdate();
                              },
                          items: conceirgeController.options.map((String option) {
                            return DropdownMenuItem<String>(
                              value: option,
                              child: Text(option),
                            );
                          }).toList(),
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: '--Select--',
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text("Enter your address to find nearest concierge,"),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 55,
                        child: InkWell(
                          onTap: (){
                            bool focus = true;
                            showDialog(
                                context: context,
                                builder: (context){
                                  return SearchScreen(
                                    conceirgeController: conceirgeController,
                                    isFocus: focus,
                                  );
                                }
                            );
                          },
                          child: TextFormField(
                            controller: conceirgeController.addressTextController,
                            enabled: false,
                              style: TextStyle(color: Colors.black),
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: 'type here',
                              )
                          ),
                        )
            ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 40,
                        width: 200,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            "Search Nearest Concierge",
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
                                  color: AppColors.AppOrangeColor,
                                ),
                              ),
                              child: Checkbox(
                                value: conceirgeController.isAgreed,
                                onChanged: (value) {
                                  conceirgeController.isAgreed = value!;
                                  Get.forceAppUpdate();
                                },
                                shape: CircleBorder(),
                                activeColor: AppColors.AppOrangeColor,
                                checkColor: AppColors.AppOrangeColor,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Vidur Limited,10 Toronto Street, Toronto, \n ON, Canada km away',
                            style:
                            TextStyle(fontSize: 16, color: Colors.black),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      DropdownButtonFormField<String>(
                        value: conceirgeController.selectedOpt,
                        onChanged: (String? newValue) {
                            conceirgeController.selectedOpt = newValue;
                        },
                        items: ['Yes', 'No'].map((String option) {
                          return DropdownMenuItem<String>(
                            value: option,
                            child: Text(option),
                          );
                        }).toList(),
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Select',
                        ),
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
                                  color: AppColors.AppOrangeColor,
                                ),
                              ),
                              child: Checkbox(
                                value: conceirgeController.isAgreeds,
                                onChanged: (value) {
                                  conceirgeController.isAgreeds = value!;
                                  Get.forceAppUpdate();
                                },
                                shape: CircleBorder(),
                                activeColor: AppColors.AppOrangeColor,
                                checkColor: AppColors.AppOrangeColor,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          RichText(
                            text: TextSpan(
                              style: TextStyle(
                                  fontSize: 16, color: Colors.black),
                              children: <TextSpan>[
                                TextSpan(
                                  text:
                                  'I agree that I have read and accepted the \n',
                                ),
                                TextSpan(
                                  text: 'Terms and Conditions.',
                                  style: TextStyle(color: AppColors.AppOrangeColor),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Center(
                child: Container(
                  height: 50,
                  width: 150,
                  child: ElevatedButton(
                    onPressed: () {
                      if(conceirgeController.isAgreeds == true){
                        FocusManager.instance.primaryFocus?.unfocus();
                        widget.tabController.animateTo(3);
                      }else {
                        Get.dialog(
                            Dialog(
                              backgroundColor: Colors.transparent,
                              elevation: 0,
                              child: CupertinoAlertDialog(
                                title: Text(
                                  'Alert',
                                  style: TextStyle(color: Colors.black),
                                ),
                                actions: [
                                  TextButton(
                                      onPressed: () {
                                        Get.back();
                                      },
                                      child: Text('Cancel')),
                                  TextButton(
                                      onPressed: () {
                                        Get.back();
                                        widget.tabController.animateTo(0);
                                      },
                                      child: Text('Discard')),
                                ],
                                content: Text(
                                    'Are you sure, you want to discard?'
                                ),
                              ),
                            ));
                      }
                    },
                    child: Text(conceirgeController.isAgreeds ==false
                        ? "Cencel"
                        : "Continue",
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
    );
  }
}

// class Auth extends GetxController {
//   updateValue() {
//     update();
//   }
// }
