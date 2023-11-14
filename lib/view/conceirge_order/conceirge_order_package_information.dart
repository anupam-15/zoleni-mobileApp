import 'package:get/route_manager.dart';
import 'package:zoleni/view/conceirge_order/conceirge_order_payment_method.dart';


import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zoleni/view/product/product_information.dart';


 

import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zoleni/view/product/product_information.dart';

import '../../exports/globle_exports.dart';
import '../../../exports/get_export.dart';
import '../widgets/appbar.dart';

class ConceirgeOrderPackageInformation extends StatefulWidget {
  const ConceirgeOrderPackageInformation({super.key});

  @override
  State<ConceirgeOrderPackageInformation> createState() =>
      _ConceirgeOrderPackageInformationState();
}

class _ConceirgeOrderPackageInformationState
    extends State<ConceirgeOrderPackageInformation> {
  bool isAgreed = false;
  bool isAgreeds = false;
  String? selectedOption1;
  String? selectedOption2;
  String? selectedOption;
  String? selectedOpt;
  List<String> options = ['Option 1', 'Option 2', 'Option 3', 'Option 4'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(60.0),
          child: MyAppBar(
            title: 'Conceirge Order Form',
          )),
      body: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Package Information",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                Card(
                  elevation: 3,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            DropdownButton<String>(
                              value: selectedOption1,
                              onChanged: (String? newValue) {
                                setState(() {
                                  selectedOption1 = newValue;
                                });
                              },
                              items: options.map((String option) {
                                return DropdownMenuItem<String>(
                                  value: option,
                                  child: Text(option),
                                );
                              }).toList(),
                              hint: Text('Dropdown 1'),
                            ),
                            DropdownButton<String>(
                              value: selectedOption2,
                              onChanged: (String? newValue) {
                                setState(() {
                                  selectedOption2 = newValue;
                                });
                              },
                              items: options.map((String option) {
                                return DropdownMenuItem<String>(
                                  value: option,
                                  child: Text(option),
                                );
                              }).toList(),
                              hint: Text('Dropdown 2'),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            DropdownButton<String>(
                              value: selectedOption1,
                              onChanged: (String? newValue) {
                                setState(() {
                                  selectedOption1 = newValue;
                                });
                              },
                              items: options.map((String option) {
                                return DropdownMenuItem<String>(
                                  value: option,
                                  child: Text(option),
                                );
                              }).toList(),
                              hint: Text('Dropdown 1'),
                            ),
                            DropdownButton<String>(
                              value: selectedOption2,
                              onChanged: (String? newValue) {
                                setState(() {
                                  selectedOption2 = newValue;
                                });
                              },
                              items: options.map((String option) {
                                return DropdownMenuItem<String>(
                                  value: option,
                                  child: Text(option),
                                );
                              }).toList(),
                              hint: Text('Dropdown 2'),
                            ),
                          ],
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
                                  backgroundColor: Colors.deepOrange),
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
                            value: selectedOption,
                            onChanged: (String? newValue) {
                              setState(() {
                                selectedOption = newValue;
                              });
                            },
                            items: options.map((String option) {
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
                          child: DropdownButtonFormField<String>(
                            value: selectedOption,
                            onChanged: (String? newValue) {
                              setState(() {
                                selectedOption = newValue;
                              });
                            },
                            items: options.map((String option) {
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
                              primary: Colors.deepOrange,
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
                                    color: Colors.deepOrange,
                                  ),
                                ),
                                child: Checkbox(
                                  value: isAgreed,
                                  onChanged: (value) {
                                    isAgreed = value!;
                                    Get.forceAppUpdate();
                                  },
                                  shape: CircleBorder(),
                                  activeColor: Colors.deepOrange,
                                  checkColor: Colors.deepOrange,
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
                          value: selectedOpt,
                          onChanged: (String? newValue) {
                            setState(() {
                              selectedOpt = newValue;
                            });
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
                                    color: Colors.deepOrange,
                                  ),
                                ),
                                child: Checkbox(
                                  value: isAgreeds,
                                  onChanged: (value) {
                                    isAgreeds = value!;
                                    Get.forceAppUpdate();
                                  },
                                  shape: CircleBorder(),
                                  activeColor: Colors.deepOrange,
                                  checkColor: Colors.deepOrange,
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
                                    style: TextStyle(color: Colors.deepOrange),
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
                    height: 6.0.h,
                    width: 35.0.w,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    ConceirgeOrderWithPaymentMethod()));
                      },
                      child: Text(
                        "Cencel",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.deepOrange,
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
      ),
    );
  }
}

// class Auth extends GetxController {
//   updateValue() {
//     update();
//   }
// }
