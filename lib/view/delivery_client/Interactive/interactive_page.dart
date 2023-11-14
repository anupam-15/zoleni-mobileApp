

import 'package:zoleni/view/delivery_client/Multiorders%20Pickup%20Location/multiorders_pickup_receiver.dart';


import 'package:responsive_sizer/responsive_sizer.dart';





import '../../../exports/globle_exports.dart';
import '../../../exports/get_export.dart';
import '../../widgets/appbar.dart';
import '../../widgets/datetextformfield.dart';import '../../widgets/appbar.dart';
import 'interactive_delivery_receiver.dart';
import 'interactive_delivery_sender.dart';
import 'interactive_qoute_details.dart';

class InteractivePage extends StatefulWidget {
  const InteractivePage({super.key});

  @override
  State<InteractivePage> createState() => _InteractivePageState();
}

class _InteractivePageState extends State<InteractivePage> {
  String? selectDropoffTime;
  String? selectMagician;
  String? selectMagicianSleight;
  bool isAgreed = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
     /* appBar: PreferredSize(
          preferredSize: Size.fromHeight(60.0),
          child: MyAppBar(
            title: 'Delivery Order Form',
          )),*/
        body: Container(
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Interactive Delivery Order Details",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10,),
                  Card(
                    elevation: 2,
                    color: Colors.white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        DatePickerFormField(),
                        SizedBox(height: 10,),
                        DropdownButtonFormField<String>(
                          decoration: InputDecoration(
                            labelText:
                            "Time",
                          ),
                          hint: const Text("-- Dropoff Time --"),
                          value: selectDropoffTime,
                          onChanged: (String? newValue) {
                            setState(() {
                              selectDropoffTime = newValue!;
                            });
                          },
                          items: <String>[
                            "12:00",
                            "01:00",
                            "02:00",
                          ].map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        ),
                        SizedBox(height: 10,),
                        Text(
                          "Choose Character",
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 10,),
                        DropdownButtonFormField<String>(
                          decoration: InputDecoration(
                            labelText:
                            "Magician",
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
                            "Magician",
                          ].map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        ),
                        SizedBox(height: 10,),
                        DropdownButtonFormField<String>(
                          decoration: InputDecoration(
                            labelText:
                            "Sleight of Hand Magician",
                          ),
                          hint: const Text("-- Select --"),
                          value: selectMagicianSleight,
                          onChanged: (String? newValue) {
                            setState(() {
                              selectMagicianSleight = newValue!;
                            });
                          },
                          items: <String>[
                            "Sleight of Hand Magician",
                            "Sleight of Hand Magician",
                          ].map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        ),
                        SizedBox(height: 10,),
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
                        Text(
                          "Tiny Magician",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis fermentum orci dui, quis feugiat sapien placerat non. Donec vitae ante laoreet, faucibus odio vitae, sollicitudin felis.",
                          textAlign: TextAlign.justify,
                        ),
                        SizedBox(height: 10,),
                      ],
                    ),
                  ),
                  SizedBox(height: 15,),
                  Center(
                    child: Container(
                      height: 6.0.h,
                      width: 35.0.w,
                      child: ElevatedButton(
                        onPressed: () {
                          Get.to(InteractiveDeliverySender());

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
