

import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zoleni/view/product/product_information.dart';


 

import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zoleni/view/product/product_information.dart';

import '../../exports/globle_exports.dart';
import '../../../exports/get_export.dart';
import '../widgets/appbar.dart';

class BusinessHours extends StatefulWidget {
  const BusinessHours({super.key});

  @override
  State<BusinessHours> createState() => _BusinessHoursState();
}

class _BusinessHoursState extends State<BusinessHours> {
  List<String> days = [
    'Monday',
    'Tuesday',
    'Wednesday',
    'Thursday',
    'Friday',
    'Saturday',
    'Sunday',
  ];
  Map<String, String> selectedTimes = {};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(60.0),
          child: MyAppBar(
            title: 'Business Hours',
          )),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Column(
          children: [
            DataTable(
              columns: [
                DataColumn(label: Text('Day')),
                DataColumn(label: Text('From')),
                DataColumn(label: Text('To')),
              ],
              rows: days.map((day) {
                selectedTimes.putIfAbsent(day, () => 'Select Time');
                return DataRow(
                  cells: [
                    DataCell(Text(day)),
                    DataCell(
                      DropdownButton<String>(
                        value: selectedTimes[day],
                        onChanged: (value) {
                          setState(() {
                            selectedTimes[day] = value!;
                          });
                        },
                        items: [
                          'Select Time',
                          '8:00 AM',
                          '9:00 AM',
                          '10:00 AM',
                          '11:00 AM',
                          '12:00 PM',
                          '1:00 PM',
                          '2:00 PM',
                          '3:00 PM',
                          '4:00 PM',
                          '5:00 PM',
                          '6:00 PM',
                          '7:00 PM',
                          '8:00 PM',
                          '9:00 PM',
                          '10:00 PM',
                        ].map((time) {
                          return DropdownMenuItem<String>(
                            value: time,
                            child: Text(time),
                          );
                        }).toList(),
                      ),
                    ),
                    DataCell(
                      DropdownButton<String>(
                        value: selectedTimes[day],
                        onChanged: (value) {
                          setState(() {
                            selectedTimes[day] = value!;
                          });
                        },
                        items: [
                          'Select Time',
                          '8:00 AM',
                          '9:00 AM',
                          '10:00 AM',
                          '11:00 AM',
                          '12:00 PM',
                          '1:00 PM',
                          '2:00 PM',
                          '3:00 PM',
                          '4:00 PM',
                          '5:00 PM',
                          '6:00 PM',
                          '7:00 PM',
                          '8:00 PM',
                          '9:00 PM',
                          '10:00 PM',
                        ].map((time) {
                          return DropdownMenuItem<String>(
                            value: time,
                            child: Text(time),
                          );
                        }).toList(),
                      ),
                    ),
                  ],
                );
              }).toList(),
            ),
            SizedBox(
              height: 30,
            ),
            Center(
              child: Container(
                height: 6.0.h,
                width: 35.0.w,
                child: ElevatedButton(
                  onPressed: () {
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (context) => ProductInformation()));
                  },
                  child: Text(
                    "Submit",
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
    );
  }
}
