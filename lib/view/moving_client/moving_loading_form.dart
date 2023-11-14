

import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zoleni/view/product/product_information.dart';


 

import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zoleni/view/product/product_information.dart';

import '../../exports/globle_exports.dart';
import '../../../exports/get_export.dart';
import '../widgets/appbar.dart';
import '../widgets/datetextformfield.dart';
import 'moving_information_page.dart';

class MovingLoadingForm extends StatefulWidget {
  const MovingLoadingForm({super.key});

  @override
  State<MovingLoadingForm> createState() => _MovingLoadingFormState();
}

class _MovingLoadingFormState extends State<MovingLoadingForm> {
  String? selectSize;
  String? selectHours;
  String? selectNoPeople;
  String? selectHoursLoading;
  String? selectScheduled;
  String? selectTime;
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
                Text("Loading and Unloading Help", style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                Card(
                  elevation: 2,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        DropdownButtonFormField<String>(
                          decoration: InputDecoration(
                            labelText:
                            "Truck Size",
                          ),
                          hint: const Text("-- Select --"),
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
                        SizedBox(height: 10,),
                        DropdownButtonFormField<String>(
                          decoration: InputDecoration(
                            labelText:
                            "Select Hours",
                          ),
                          hint: const Text("-- Select --"),
                          value: selectHours,
                          onChanged: (String? newValue) {
                            setState(() {
                              selectHours = newValue!;
                            });
                          },
                          items: <String>[
                            "1 Hours",
                            "2 Hours",
                            "3 Hours",

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
                            "No. of people/worker/labour required",
                          ),
                          hint: const Text("-- Select --"),
                          value: selectNoPeople,
                          onChanged: (String? newValue) {
                            setState(() {
                              selectNoPeople = newValue!;
                            });
                          },
                          items: <String>[
                            "1",
                            "2 ",
                            "3",

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
                            "Select Hours (for loading & unloading) ",
                          ),
                          hint: const Text("-- Select --"),
                          value: selectHoursLoading,
                          onChanged: (String? newValue) {
                            setState(() {
                              selectHoursLoading = newValue!;
                            });
                          },
                          items: <String>[
                            "1 Hours",
                            "2 Hours",
                            "3 Hours",

                          ].map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        ),
                        SizedBox(height: 10,),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Text("Delivery", style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                SizedBox(height: 10,),
                Card(
                  elevation: 2,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        DropdownButtonFormField<String>(
                          decoration: InputDecoration(
                            labelText:
                            "Scheduled",
                          ),
                          hint: const Text("-- Select --"),
                          value: selectScheduled,
                          onChanged: (String? newValue) {
                            setState(() {
                              selectScheduled = newValue!;
                            });
                          },
                          items: <String>[
                            "1 Hours",
                            "2 Hours",
                            "3 Hours",
                          ].map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        ),
                        SizedBox(height: 10,),
                        DatePickerFormField(),
                        SizedBox(height: 10,),
                        DropdownButtonFormField<String>(
                          decoration: InputDecoration(
                            labelText:
                            "Time",
                          ),
                          hint: const Text("-- Select --"),
                          value: selectTime,
                          onChanged: (String? newValue) {
                            setState(() {
                              selectTime = newValue!;
                            });
                          },
                          items: <String>[
                            "1 Hours",
                            "2 Hours",
                            "3 Hours",

                          ].map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        ),
                        SizedBox(height: 10,),

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
                        Get.to(MovingInformation());
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
