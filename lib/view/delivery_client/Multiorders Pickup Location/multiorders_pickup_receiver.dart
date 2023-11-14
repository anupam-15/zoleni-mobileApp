

import 'package:zoleni/view/delivery_client/Delivery%20Now/now_delivery_package_information.dart';
import 'package:zoleni/view/delivery_client/Multiorders%20Pickup%20Location/multiorders_pickup_package_information.dart';


import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zoleni/view/product/product_information.dart';


import 'package:zoleni/view/delivery_client/Delivery%20Now/now_delivery_package_information.dart';


import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zoleni/view/product/product_information.dart';

import '../../../exports/globle_exports.dart';
import '../../../exports/get_export.dart';
import '../../widgets/appbar.dart';
class MultiordersSamePickupReceiver extends StatefulWidget {
  const MultiordersSamePickupReceiver({super.key});

  @override
  State<MultiordersSamePickupReceiver> createState() => _MultiordersSamePickupReceiverState();
}

class _MultiordersSamePickupReceiverState extends State<MultiordersSamePickupReceiver> {
  String? selectDropAddress;
  String? selectTowerBuilding;
  String? selectPickupFrom;
  String? selectDropLocation;
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
            padding: const EdgeInsets.all(5.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Mutliorder Same Pickup Location Delivery Order-Receiver Details",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Card(
                  elevation: 2,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        TextFormField(
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            labelText: 'Name',
                            hintText: 'Ranjan S.',
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        DropdownButtonFormField<String>(
                          decoration: InputDecoration(
                            labelText:
                            "Select dropoff address from your address book",
                          ),
                          hint: const Text("-- Select --"),
                          value: selectDropAddress,
                          onChanged: (String? newValue) {
                            setState(() {
                              selectDropAddress = newValue!;
                            });
                          },
                          items: <String>[
                            "Berry Street Lobby, Torronto",
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
                        TextFormField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            labelText: 'Phone Number',
                            hintText: '+1 98543123456',
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        DropdownButtonFormField<String>(
                          decoration: InputDecoration(
                            labelText: "Is it tower building?",
                          ),
                          hint: const Text("-- Select --"),
                          value: selectTowerBuilding,
                          onChanged: (String? newValue) {
                            setState(() {
                              selectTowerBuilding = newValue!;
                            });
                          },
                          items: <String>[
                            "Yes",
                            "No",
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
                        Visibility(
                          visible: selectTowerBuilding == "Yes",
                          child: DropdownButtonFormField<String>(
                            decoration: InputDecoration(
                              labelText: 'Select Pickup Form',
                            ),
                            hint: const Text('-- Select --'),
                            value: selectPickupFrom,
                            onChanged: (String? newValue) {
                              setState(() {
                                selectPickupFrom = newValue!;
                              });
                            },
                            items: <String>[
                              'Pick Up From Reception Desk',
                              'Pick Up From Unit Directly',
                            ].map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        DropdownButtonFormField<String>(
                          decoration: InputDecoration(
                            labelText: "If no one to receive in drop-off location",
                          ),
                          hint: const Text("-- Select --"),
                          value: selectDropLocation,
                          onChanged: (String? newValue) {
                            setState(() {
                              selectDropLocation = newValue!;
                            });
                          },
                          items: <String>[
                            "***",
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
                        TextFormField(
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            labelText: 'Type Address',

                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            labelText: 'Suite/Unit',
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            labelText: 'Address Instruction',
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 15,),
                Center(
                  child: Container(
                    height: 6.0.h,
                    width: 35.0.w,
                    child: ElevatedButton(
                      onPressed: () {
                        Get.to(MultiordersPackageInformation());
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