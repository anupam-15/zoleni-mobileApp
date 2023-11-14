

import 'package:zoleni/view/delivery_client/Ongoing/monthly_delivery_sender.dart';
import 'package:zoleni/view/delivery_client/Ongoing/weekly_delivery_sender.dart';


import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zoleni/view/product/product_information.dart';


import 'package:zoleni/view/delivery_client/Delivery%20Now/now_delivery_package_information.dart';


import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zoleni/view/product/product_information.dart';

import '../../../exports/globle_exports.dart';
import '../../../exports/get_export.dart';
import '../../widgets/appbar.dart';
import '../../widgets/datetextformfield.dart';


class MonthlyOngoingDelivery extends StatefulWidget {
  const MonthlyOngoingDelivery({super.key});

  @override
  State<MonthlyOngoingDelivery> createState() => _MonthlyOngoingDeliveryState();
}

class _MonthlyOngoingDeliveryState extends State<MonthlyOngoingDelivery> {

  String? selectPickupTime;
  String? selectDay; bool isChecked1 = false;
  bool isChecked2 = false;
  bool isChecked3 = false;
  bool isChecked4 = false;
  bool isChecked5 = false;
  bool isChecked6 = false;
  bool isChecked7 = false;
  bool isChecked8 = false;
  bool isChecked9 = false;
  bool isChecked10 = false;
  bool isChecked11 = false;
  bool isChecked12 = false;
  bool isChecked13 = false;
  bool isChecked14 = false;
  bool isChecked15 = false;
  bool isChecked16 = false;
  bool isChecked17 = false;
  bool isChecked18 = false;
  bool isChecked19 = false;
  bool isChecked20 = false;
  bool isChecked21 = false;
  bool isChecked22 = false;
  bool isChecked23 = false;
  bool isChecked24 = false;
  bool isChecked25 = false;
  bool isChecked26 = false;
  bool isChecked27 = false;
  bool isChecked28 = false;
  bool isChecked29 = false;
  bool isChecked30 = false;
  List<bool> isCheckedList = List.generate(30, (index) => false);
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
          padding: const EdgeInsets.all(2.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Monthly Ongoing Delivery Order Details",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Card(
                  elevation: 2,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Row(
                              children: [
                                Checkbox(
                                  value: isChecked1,
                                  onChanged: (bool? value) {
                                    setState(() {
                                      isChecked1 = value!;
                                    });
                                  },
                                ),
                                Text('1st'),
                              ],
                            ),
                            Row(
                              children: [
                                Checkbox(
                                  value: isChecked2,
                                  onChanged: (bool? value) {
                                    setState(() {
                                      isChecked2 = value!;
                                    });
                                  },
                                ),
                                Text('2nd'),
                              ],
                            ),
                            Row(
                              children: [
                                Checkbox(
                                  value: isChecked3,
                                  onChanged: (bool? value) {
                                    setState(() {
                                      isChecked3 = value!;
                                    });
                                  },
                                ),
                                Text('3rd'),
                              ],
                            ),
                            Row(
                              children: [
                                Checkbox(
                                  value: isChecked4,
                                  onChanged: (bool? value) {
                                    setState(() {
                                      isChecked4 = value!;
                                    });
                                  },
                                ),
                                Text('4th'),
                              ],
                            ),
                            Row(
                              children: [
                                Checkbox(
                                  value: isChecked5,
                                  onChanged: (bool? value) {
                                    setState(() {
                                      isChecked5 = value!;
                                    });
                                  },
                                ),
                                Text('5th'),
                              ],
                            ),
                          ],
                        ),
                       /* Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Row(
                              children: [
                                Checkbox(
                                  value: isChecked6,
                                  onChanged: (bool? value) {
                                    setState(() {
                                      isChecked6 = value!;
                                    });
                                  },
                                ),
                                Text('6th'),
                              ],
                            ),
                            Row(
                              children: [
                                Checkbox(
                                  value: isChecked7,
                                  onChanged: (bool? value) {
                                    setState(() {
                                      isChecked7 = value!;
                                    });
                                  },
                                ),
                                Text('7th'),
                              ],
                            ),
                            Row(
                              children: [
                                Checkbox(
                                  value: isChecked8,
                                  onChanged: (bool? value) {
                                    setState(() {
                                      isChecked8 = value!;
                                    });
                                  },
                                ),
                                Text('8th'),
                              ],
                            ),
                            Row(
                              children: [
                                Checkbox(
                                  value: isChecked9,
                                  onChanged: (bool? value) {
                                    setState(() {
                                      isChecked9 = value!;
                                    });
                                  },
                                ),
                                Text('9th'),
                              ],
                            ),
                            Row(
                              children: [
                                Checkbox(
                                  value: isChecked10,
                                  onChanged: (bool? value) {
                                    setState(() {
                                      isChecked10 = value!;
                                    });
                                  },
                                ),
                                Text('10th'),
                              ],
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Row(
                              children: [
                                Checkbox(
                                  value: isChecked11,
                                  onChanged: (bool? value) {
                                    setState(() {
                                      isChecked11 = value!;
                                    });
                                  },
                                ),
                                Text('11th'),
                              ],
                            ),
                            Row(
                              children: [
                                Checkbox(
                                  value: isChecked12,
                                  onChanged: (bool? value) {
                                    setState(() {
                                      isChecked12 = value!;
                                    });
                                  },
                                ),
                                Text('12th'),
                              ],
                            ),
                            Row(
                              children: [
                                Checkbox(
                                  value: isChecked13,
                                  onChanged: (bool? value) {
                                    setState(() {
                                      isChecked13 = value!;
                                    });
                                  },
                                ),
                                Text('13th'),
                              ],
                            ),
                            Row(
                              children: [
                                Checkbox(
                                  value: isChecked14,
                                  onChanged: (bool? value) {
                                    setState(() {
                                      isChecked14 = value!;
                                    });
                                  },
                                ),
                                Text('14th'),
                              ],
                            ),
                            Row(
                              children: [
                                Checkbox(
                                  value: isChecked15,
                                  onChanged: (bool? value) {
                                    setState(() {
                                      isChecked15 = value!;
                                    });
                                  },
                                ),
                                Text('15th'),
                              ],
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Row(
                              children: [
                                Checkbox(
                                  value: isChecked16,
                                  onChanged: (bool? value) {
                                    setState(() {
                                      isChecked16 = value!;
                                    });
                                  },
                                ),
                                Text('16th'),
                              ],
                            ),
                            Row(
                              children: [
                                Checkbox(
                                  value: isChecked17,
                                  onChanged: (bool? value) {
                                    setState(() {
                                      isChecked17 = value!;
                                    });
                                  },
                                ),
                                Text('17th'),
                              ],
                            ),
                            Row(
                              children: [
                                Checkbox(
                                  value: isChecked18,
                                  onChanged: (bool? value) {
                                    setState(() {
                                      isChecked18 = value!;
                                    });
                                  },
                                ),
                                Text('18th'),
                              ],
                            ),
                            Row(
                              children: [
                                Checkbox(
                                  value: isChecked19,
                                  onChanged: (bool? value) {
                                    setState(() {
                                      isChecked19 = value!;
                                    });
                                  },
                                ),
                                Text('19th'),
                              ],
                            ),
                            Row(
                              children: [
                                Checkbox(
                                  value: isChecked20,
                                  onChanged: (bool? value) {
                                    setState(() {
                                      isChecked20 = value!;
                                    });
                                  },
                                ),
                                Text('20th'),
                              ],
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Row(
                              children: [
                                Checkbox(
                                  value: isChecked21,
                                  onChanged: (bool? value) {
                                    setState(() {
                                      isChecked21 = value!;
                                    });
                                  },
                                ),
                                Text('21th'),
                              ],
                            ),
                            Row(
                              children: [
                                Checkbox(
                                  value: isChecked22,
                                  onChanged: (bool? value) {
                                    setState(() {
                                      isChecked22 = value!;
                                    });
                                  },
                                ),
                                Text('22th'),
                              ],
                            ),
                            Row(
                              children: [
                                Checkbox(
                                  value: isChecked23,
                                  onChanged: (bool? value) {
                                    setState(() {
                                      isChecked23 = value!;
                                    });
                                  },
                                ),
                                Text('23th'),
                              ],
                            ),
                            Row(
                              children: [
                                Checkbox(
                                  value: isChecked24,
                                  onChanged: (bool? value) {
                                    setState(() {
                                      isChecked24 = value!;
                                    });
                                  },
                                ),
                                Text('24th'),
                              ],
                            ),
                            Row(
                              children: [
                                Checkbox(
                                  value: isChecked25,
                                  onChanged: (bool? value) {
                                    setState(() {
                                      isChecked25 = value!;
                                    });
                                  },
                                ),
                                Text('25th'),
                              ],
                            ),
                          ],
                        ),*/
                        /*Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Row(
                              children: [
                                Checkbox(
                                  value: isChecked26,
                                  onChanged: (bool? value) {
                                    setState(() {
                                      isChecked26 = value!;
                                    });
                                  },
                                ),
                                Text('26th'),
                              ],
                            ),
                            Row(
                              children: [
                                Checkbox(
                                  value: isChecked27,
                                  onChanged: (bool? value) {
                                    setState(() {
                                      isChecked27 = value!;
                                    });
                                  },
                                ),
                                Text('27th'),
                              ],
                            ),
                            Row(
                              children: [
                                Checkbox(
                                  value: isChecked28,
                                  onChanged: (bool? value) {
                                    setState(() {
                                      isChecked28 = value!;
                                    });
                                  },
                                ),
                                Text('28th'),
                              ],
                            ),
                            Row(
                              children: [
                                Checkbox(
                                  value: isChecked29,
                                  onChanged: (bool? value) {
                                    setState(() {
                                      isChecked29 = value!;
                                    });
                                  },
                                ),
                                Text('29th'),
                              ],
                            ),
                            Row(
                              children: [
                                Checkbox(
                                  value: isChecked30,
                                  onChanged: (bool? value) {
                                    setState(() {
                                      isChecked30 = value!;
                                    });
                                  },
                                ),
                                Text('30th'),
                              ],
                            ),
                          ],
                        ),*/
                        SizedBox(height: 10,),
                        DropdownButtonFormField<String>(
                          decoration: InputDecoration(
                            labelText:
                            "Time",
                          ),
                          hint: const Text("Pickup Time"),
                          value: selectPickupTime,
                          onChanged: (String? newValue) {
                            setState(() {
                              selectPickupTime = newValue!;
                            });
                          },
                          items: <String>[
                            "12:00",
                            "01:00",
                            "02:00",
                            "03:00",
                          ].map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        ),
                        SizedBox(height: 5,),
                        Text(
                          'Exception',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text('Date'),
                        SizedBox(
                          height: 5,
                        ),
                        DatePickerFormField(),
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              "Remove",
                              style: TextStyle(color: Colors.deepOrange),
                            )),
                        ElevatedButton.icon(
                          onPressed: () {},
                          icon: Icon(
                            Icons.add,
                            size: 24.0,
                          ),
                          label: Text('Add More'),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.deepOrange,
                          ),
                        ),
                        DropdownButtonFormField<String>(
                          decoration: InputDecoration(
                            labelText: "Select Pickup Form",
                          ),
                          hint: const Text("-- Select --"),
                          value: selectDay,
                          onChanged: (String? newValue) {
                            setState(() {
                              selectDay = newValue!;
                            });
                          },
                          items: <String>[
                            "Pickup from unit directly",
                          ].map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        ),
                        SizedBox(height: 10,)
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
                        Get.to(MonthlyDeliverySender());
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
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
