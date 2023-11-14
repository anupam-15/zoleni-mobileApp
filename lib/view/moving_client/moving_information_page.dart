


import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zoleni/view/product/product_information.dart';


 

import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zoleni/view/product/product_information.dart';

import '../../exports/globle_exports.dart';
import '../../../exports/get_export.dart';
import '../widgets/appbar.dart';
import 'moving_packing_form.dart';

class MovingInformation extends StatefulWidget {
  const MovingInformation({super.key});

  @override
  State<MovingInformation> createState() => _MovingInformationState();
}

class _MovingInformationState extends State<MovingInformation> {
  String? selectBuilding;
  String? selectEntrance;
  String? selectEntranceTo;
  String? selectSize;
  bool valueAnyItem = false;
  bool valueFridge = false;
  bool valueGym = false;
  bool valueEquipment = false;
  bool valuePool = false;
  bool valueGrand = false;
  bool valueBaby = false;
  bool valuePrinter = false;
  bool valueTub = false;
  bool valuePiano = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(60.0),
          child: MyAppBar(
            title: 'Moving Form',
          )),
      body: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Moving Information",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Card(
                  elevation: 2,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        DropdownButtonFormField<String>(
                          decoration: InputDecoration(
                            labelText: "Building Type",
                          ),
                          hint: const Text("-- Select --"),
                          value: selectBuilding,
                          onChanged: (String? newValue) {
                            setState(() {
                              selectBuilding = newValue!;
                            });
                          },
                          items: <String>[
                            "House",
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
                            labelText: "Type of Entrance (From)",
                          ),
                          hint: const Text("-- Select --"),
                          value: selectEntrance,
                          onChanged: (String? newValue) {
                            setState(() {
                              selectEntrance = newValue!;
                            });
                          },
                          items: <String>[
                            "Elevator",
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
                            labelText: "Type of Entrance (To)",
                          ),
                          hint: const Text("-- Select --"),
                          value: selectEntranceTo,
                          onChanged: (String? newValue) {
                            setState(() {
                              selectEntranceTo = newValue!;
                            });
                          },
                          items: <String>[
                            "Private House",
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
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Select Inventory (Size of Move)",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Card(
                  elevation: 2,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        DropdownButtonFormField<String>(
                          decoration: InputDecoration(
                            labelText: "Size",
                          ),
                          hint: const Text("-- Area Size --"),
                          value: selectSize,
                          onChanged: (String? newValue) {
                            setState(() {
                              selectSize = newValue!;
                            });
                          },
                          items: <String>[
                            "10ft",
                            "20ft",
                            "30ft",
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
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Special Articles (Please select following article if any)",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Card(
                  elevation: 2,
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              Checkbox(
                                checkColor: Colors.greenAccent,
                                activeColor: Colors.red,
                                value: this.valueAnyItem,
                                onChanged: (bool? value) {
                                  setState(() {
                                    this.valueAnyItem = value!;
                                  });
                                },
                              ),
                              Text('Any item over 150 Lbs ',),
                            ],
                          ),
                          Row(
                            children: [Checkbox(
                              checkColor: Colors.greenAccent,
                              activeColor: Colors.red,
                              value: this.valueGym,
                              onChanged: (bool? value) {
                                setState(() {
                                  this.valueGym = value!;
                                });
                              },
                            ),
                              Text('Heavy Gym Equipment',),],
                          ),
                          Row(
                            children: [Checkbox(
                              checkColor: Colors.greenAccent,
                              activeColor: Colors.red,
                              value: this.valuePool,
                              onChanged: (bool? value) {
                                setState(() {
                                  this.valuePool = value!;
                                });
                              },
                            ),
                              Text('Pool Table                     ',),],
                          ),
                          Row(
                            children: [Checkbox(
                              checkColor: Colors.greenAccent,
                              activeColor: Colors.red,
                              value: this.valueBaby,
                              onChanged: (bool? value) {
                                setState(() {
                                  this.valueBaby = value!;
                                });
                              },
                            ),
                              Text('Baby Piano                   ',),],
                          ),
                          Row(
                            children: [Checkbox(
                              checkColor: Colors.greenAccent,
                              activeColor: Colors.red,
                              value: this.valueTub,
                              onChanged: (bool? value) {
                                setState(() {
                                  this.valueTub = value!;
                                });
                              },
                            ),
                              Text('Hot Tub                         ',),],
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Checkbox(
                                checkColor: Colors.greenAccent,
                                activeColor: Colors.red,
                                value: this.valueFridge,
                                onChanged: (bool? value) {
                                  setState(() {
                                    this.valueFridge = value!;
                                  });
                                },
                              ),
                              Text('Double Door Fridge ',),
                            ],
                          ),
                          Row(
                            children: [Checkbox(
                              checkColor: Colors.greenAccent,
                              activeColor: Colors.red,
                              value: this.valueEquipment,
                              onChanged: (bool? value) {
                                setState(() {
                                  this.valueEquipment = value!;
                                });
                              },
                            ),
                              Text('Industrial Equipment',),],
                          ),
                          Row(
                            children: [Checkbox(
                              checkColor: Colors.greenAccent,
                              activeColor: Colors.red,
                              value: this.valueGrand,
                              onChanged: (bool? value) {
                                setState(() {
                                  this.valueGrand = value!;
                                });
                              },
                            ),
                              Text('Grand Piano               ',),],
                          ),
                          Row(
                            children: [Checkbox(
                              checkColor: Colors.greenAccent,
                              activeColor: Colors.red,
                              value: this.valuePrinter,
                              onChanged: (bool? value) {
                                setState(() {
                                  this.valuePrinter = value!;
                                });
                              },
                            ),
                              Text('Large Office Printer  ',),],
                          ),
                          Row(
                            children: [Checkbox(
                              checkColor: Colors.greenAccent,
                              activeColor: Colors.red,
                              value: this.valuePiano,
                              onChanged: (bool? value) {
                                setState(() {
                                  this.valuePiano = value!;
                                });
                              },
                            ),
                              Text('Upright Piano             ',),],
                          ),
                        ],
                      ),
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
                       Get.to(MovingPackingPage());
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
