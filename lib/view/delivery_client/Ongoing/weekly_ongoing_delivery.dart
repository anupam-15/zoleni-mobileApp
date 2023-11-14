

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


class WeeeklyOngoingDelivery extends StatefulWidget {
  const WeeeklyOngoingDelivery({super.key});

  @override
  State<WeeeklyOngoingDelivery> createState() => _WeeeklyOngoingDeliveryState();
}

class _WeeeklyOngoingDeliveryState extends State<WeeeklyOngoingDelivery> {
   String? selectSundayTime;
   String? selectMondayTime;
   String? selectTuesdayTime;
   String? selectWednesdayTime;
   String? selectThursdayTime;
   String? selectFridayTime;
   String? selectSaturdayTime;
   String? selectDay;
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
                  "Weekly Ongoing Delivery Order Details",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Card(
                  elevation: 2,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        DropdownButtonFormField<String>(
                          decoration: InputDecoration(
                            labelText:
                            "Time",
                          ),
                          hint: const Text("Every Sunday Pickup Time"),
                          value: selectSundayTime,
                          onChanged: (String? newValue) {
                            setState(() {
                              selectSundayTime = newValue!;
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
                        DropdownButtonFormField<String>(
                          decoration: InputDecoration(
                            labelText:
                            "Time",
                          ),
                          hint: const Text("Every Monday Pickup Time"),
                          value: selectMondayTime,
                          onChanged: (String? newValue) {
                            setState(() {
                              selectMondayTime = newValue!;
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
                        DropdownButtonFormField<String>(
                          decoration: InputDecoration(
                            labelText:
                            "Time",
                          ),
                          hint: const Text("Every Tuesday Pickup Time"),
                          value: selectTuesdayTime,
                          onChanged: (String? newValue) {
                            setState(() {
                              selectTuesdayTime = newValue!;
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
                        DropdownButtonFormField<String>(
                          decoration: InputDecoration(
                            labelText:
                            "Time",
                          ),
                          hint: const Text("Every Wednesday Pickup Time"),
                          value: selectWednesdayTime,
                          onChanged: (String? newValue) {
                            setState(() {
                              selectWednesdayTime = newValue!;
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
                        DropdownButtonFormField<String>(
                          decoration: InputDecoration(
                            labelText:
                            "Time",
                          ),
                          hint: const Text("Every Thursday Pickup Time"),
                          value: selectThursdayTime,
                          onChanged: (String? newValue) {
                            setState(() {
                              selectThursdayTime = newValue!;
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
                        DropdownButtonFormField<String>(
                          decoration: InputDecoration(
                            labelText:
                            "Time",
                          ),
                          hint: const Text("Every Friday Pickup Time"),
                          value: selectFridayTime,
                          onChanged: (String? newValue) {
                            setState(() {
                              selectFridayTime = newValue!;
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
                        DropdownButtonFormField<String>(
                          decoration: InputDecoration(
                            labelText:
                            "Time",
                          ),
                          hint: const Text("Every Saturday Pickup Time"),
                          value: selectSaturdayTime,
                          onChanged: (String? newValue) {
                            setState(() {
                              selectSaturdayTime = newValue!;
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
                        Get.to(WeeklyDeliverySender());
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
