

import 'package:responsive_sizer/responsive_sizer.dart';


 

import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zoleni/view/product/product_information.dart';

import '../../exports/globle_exports.dart';
import '../../../exports/get_export.dart';
import '../widgets/appbar.dart';
import 'moving_pickup_page.dart';

class MovingPackingPage extends StatefulWidget {
  const MovingPackingPage({super.key});

  @override
  State<MovingPackingPage> createState() => _MovingPackingPageState();
}

class _MovingPackingPageState extends State<MovingPackingPage> {
  String? selectOption = "Labour / Worker";
  String? selectNumber;
  String? selectPackingTime;
  String? selectPads;
  String? selectQuantity;
  String? selectBubble;
  String? selectStretched;
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
                  "Packing",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Card(
                  elevation: 2,
                  color:Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        DropdownButtonFormField<String>(
                          decoration: InputDecoration(
                            labelText: "Select Option",
                          ),
                          hint: const Text("-- Select --"),
                          value: selectOption,
                          onChanged: (String? newValue) {
                            setState(() {
                              selectOption = newValue!;
                            });
                          },
                          items: <String>[
                            "Labour / Worker",
                            "Moving Supply",
                            "Both",
                          ].map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        ),
                        SizedBox(height: 10,),
                        Visibility(
                          visible: selectOption == "Labour / Worker" || selectOption == "Both",
                          child: Container(
                            child: Column(
                              children: [
                                DropdownButtonFormField<String>(
                                  decoration: InputDecoration(
                                    labelText: "Number",
                                  ),
                                  hint: const Text("-- No. of people/worker/labour/ required --"),
                                  value: selectNumber,
                                  onChanged: (String? newValue) {
                                    setState(() {
                                      selectNumber = newValue!;
                                    });
                                  },
                                  items: <String>[
                                    "No. of people/worker/labour/ required",
                                  ].map<DropdownMenuItem<String>>((String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(value),
                                    );
                                  }).toList(),
                                ),
                                SizedBox(height: 5,),
                                DropdownButtonFormField<String>(
                                  decoration: InputDecoration(
                                    labelText: "Packing Time",
                                  ),
                                  hint: const Text("-- Packing (Select Hours) --"),
                                  value: selectPackingTime,
                                  onChanged: (String? newValue) {
                                    setState(() {
                                      selectPackingTime = newValue!;
                                    });
                                  },
                                  items: <String>[
                                    "People",
                                    "worker",
                                    "labour",
                                    "required",
                                  ].map<DropdownMenuItem<String>>((String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(value),
                                    );
                                  }).toList(),
                                ),
                              ],
                            ),
                          ),
                        ),

                        SizedBox(height: 10,),
                        Visibility(
                          visible: selectOption == "Moving Supply" || selectOption == "Both",
                          child: Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Moving Supplies",
                                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                                ),
                                SizedBox(height: 10,),
                                DropdownButtonFormField<String>(
                                  decoration: InputDecoration(
                                    labelText: "Furniture Pads",
                                  ),
                                  hint: const Text("--- Select Quantity ---"),
                                  value: selectPads,
                                  onChanged: (String? newValue) {
                                    setState(() {
                                      selectPads = newValue!;
                                    });
                                  },
                                  items: <String>[
                                    "People",
                                    "worker",
                                    "labour",
                                    "required",
                                  ].map<DropdownMenuItem<String>>((String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(value),
                                    );
                                  }).toList(),
                                ),
                                DropdownButtonFormField<String>(
                                  decoration: InputDecoration(
                                    labelText: "Heavy Duty Pr-Stretched Wrap",
                                  ),
                                  hint: const Text("--- Select Quantity ---"),
                                  value: selectQuantity,
                                  onChanged: (String? newValue) {
                                    setState(() {
                                      selectQuantity = newValue!;
                                    });
                                  },
                                  items: <String>[
                                    "People",
                                    "worker",
                                    "labour",
                                    "required",
                                  ].map<DropdownMenuItem<String>>((String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(value),
                                    );
                                  }).toList(),
                                ),
                                DropdownButtonFormField<String>(
                                  decoration: InputDecoration(
                                    labelText: "Moving Bubble Wrap",
                                  ),
                                  hint: const Text("--- Select Quantity ---"),
                                  value: selectBubble,
                                  onChanged: (String? newValue) {
                                    setState(() {
                                      selectBubble = newValue!;
                                    });
                                  },
                                  items: <String>[
                                    "People",
                                    "worker",
                                    "labour",
                                    "required",
                                  ].map<DropdownMenuItem<String>>((String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(value),
                                    );
                                  }).toList(),
                                ),
                                DropdownButtonFormField<String>(
                                  decoration: InputDecoration(
                                    labelText: "Standard Pr-Stretched Wrap",
                                  ),
                                  hint: const Text("--- Select Quantity ---"),
                                  value: selectStretched,
                                  onChanged: (String? newValue) {
                                    setState(() {
                                      selectStretched = newValue!;
                                    });
                                  },
                                  items: <String>[
                                    "People",
                                    "worker",
                                    "labour",
                                    "required",
                                  ].map<DropdownMenuItem<String>>((String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(value),
                                    );
                                  }).toList(),
                                ),
                              ],
                            ),
                          ),
                        )
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
                        Get.to(MovingPickupLocation());
                      },
                      child: Text(
                        "Next",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold
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
