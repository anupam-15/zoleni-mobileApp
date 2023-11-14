

import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zoleni/view/product/product_information.dart';


 

import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zoleni/view/product/product_information.dart';

import '../../exports/globle_exports.dart';
import '../../../exports/get_export.dart';
import '../widgets/appbar.dart';
import '../widgets/datetextformfield.dart';
import 'delivery_order_sendar.dart';

class DeliveryOrderForm extends StatefulWidget {
  const DeliveryOrderForm({super.key});

  @override
  State<DeliveryOrderForm> createState() => _DeliveryOrderFormState();
}

class _DeliveryOrderFormState extends State<DeliveryOrderForm> {
  String? selectTime;
  String? selectMagician;
  String? selectSleighHandMagician;
  bool isAgreed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(60.0),
          child: MyAppBar(
            title: 'Delivery Order Form',
          )),
      body: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: [
                Card(
                  elevation: 3,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(child: DatePickerFormField()),
                        SizedBox(
                          height: 10,
                        ),
                        DropdownButtonFormField<String>(
                          decoration: InputDecoration(
                            labelText: "Time*",
                          ),
                          hint: const Text("-- Dropoff Time --"),
                          value: selectTime,
                          onChanged: (String? newValue) {
                            setState(() {
                              selectTime = newValue!;
                            });
                          },
                          items: <String>[
                            "abc",
                            "bcd",
                            "cde",
                          ].map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Choose Character",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        DropdownButtonFormField<String>(
                          decoration: InputDecoration(
                            labelText: "Magician",
                          ),
                          hint: const Text("-- Select --"),
                          value: selectMagician,
                          onChanged: (String? newValue) {
                            setState(() {
                              selectMagician = newValue!;
                            });
                          },
                          items: <String>[
                            "Magician",
                          ].map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        DropdownButtonFormField<String>(
                          decoration: InputDecoration(
                            labelText: "Sleight of Hand Magician",
                          ),
                          hint: const Text("-- Select --"),
                          value: selectSleighHandMagician,
                          onChanged: (String? newValue) {
                            setState(() {
                              selectSleighHandMagician = newValue!;
                            });
                          },
                          items: <String>[
                            "Sleight of Hand Magician",
                          ].map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
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
                            Image.asset(
                              "assets/images/magmage.png",
                              height: 100,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Tiny Magician",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis fermentum orci dui, quis feugiat sapien placerat non. Donec vitae ante laoreet, faucibus odio vitae, sollicitudin felis.",
                          textAlign: TextAlign.justify,
                        )
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
                                builder: (context) => DeliveryOrderSendar()));
                      },
                      child: Text(
                        "Next",
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
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
