import 'package:zoleni/view/moving_client/flat_rate_articles.dart';



import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../exports/get_export.dart';
import '../../exports/globle_exports.dart';
import '../widgets/datetextformfield.dart';
import 'moving_information_page.dart';

class MovingScreen extends StatefulWidget {
  const MovingScreen({super.key});

  @override
  State<MovingScreen> createState() => _MovingScreenState();
}

class _MovingScreenState extends State<MovingScreen> {
  bool isPerHour = false;
  bool FlatRate = false;
  String? selectSize;
  String? selectHours;
  String? selectNoPeople;
  String? selectHoursLoading;
  String? selectScheduled;
  String? selectTime;

  String? selectScheduledFlat;
  String? selectTimeFlat;
  String? selectBuildingType;
  String? selectEntranceFrom;
  String? selectEntranceTo;
  String? selectSizeFlat;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue[50],
        /* appBar: PreferredSize(
          preferredSize: Size.fromHeight(60.0),
          child: MyAppBar(
            title: 'Moving Form',
          )),*/
        body:Container(
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 6.0.h,
                      width: 47.0.w,
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            isPerHour = false;
                          });
                        },
                        child: Text(
                          "Per Hour",
                          style: TextStyle(
                            color: isPerHour ? Colors.deepOrange : Colors.white,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: isPerHour ? Colors.white : Colors.deepOrange,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                      height: 6.0.h,
                      width: 47.0.w,
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            isPerHour = true;
                          });
                        },
                        child: Text(
                          "Flat Rate",
                          style: TextStyle(
                            color: isPerHour ? Colors.white : Colors.deepOrange,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: isPerHour ? Colors.deepOrange : Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                isPerHour ?
                Expanded(
                  child: Container(
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height:1.0.h,),
                          Text("Delivery", style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                          SizedBox(height: 1.0.h,),
                          Card(
                              elevation: 2,
                              color: Colors.white,
                              child:Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Column(
                                  children: [
                                    DropdownButtonFormField<String>(
                                      decoration: InputDecoration(
                                        labelText:
                                        "Scheduled",
                                      ),
                                      hint: const Text("Per Hour (Hourly)"),
                                      value: selectScheduledFlat,
                                      onChanged: (String? newValue) {
                                        setState(() {
                                          selectScheduledFlat = newValue!;
                                        });
                                      },
                                      items: <String>[
                                        "10:00",
                                        "20:00",
                                        "30:00",
                                      ].map<DropdownMenuItem<String>>((String value) {
                                        return DropdownMenuItem<String>(
                                          value: value,
                                          child: Text(value),
                                        );
                                      }).toList(),
                                    ),
                                    SizedBox(height: 1.0.h,),
                                    DatePickerFormField(),
                                    SizedBox(height: 1.0.h,),
                                    DropdownButtonFormField<String>(
                                      decoration: InputDecoration(
                                        labelText:
                                        "Time",
                                      ),
                                      hint: const Text("-- Select --"),
                                      value: selectTimeFlat,
                                      onChanged: (String? newValue) {
                                        setState(() {
                                          selectTimeFlat = newValue!;
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
                                    SizedBox(height: 1.0.h,),
                                  ],
                                ),
                              )
                          ),
                          SizedBox(height: 1.0.h,),
                          Text("Moving Information", style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                          SizedBox(height: 1.0.h,),
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
                                      "Building Type",
                                    ),
                                    hint: const Text("-- Select --"),
                                    value: selectBuildingType,
                                    onChanged: (String? newValue) {
                                      setState(() {
                                        selectBuildingType = newValue!;
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
                                  SizedBox(height: 1.0.h,),
                                  DropdownButtonFormField<String>(
                                    decoration: InputDecoration(
                                      labelText:
                                      "Type of Entrance (From)",
                                    ),
                                    hint: const Text("-- Select --"),
                                    value: selectEntranceFrom,
                                    onChanged: (String? newValue) {
                                      setState(() {
                                        selectEntranceFrom = newValue!;
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
                                  SizedBox(height: 1.0.h,),
                                  DropdownButtonFormField<String>(
                                    decoration: InputDecoration(
                                      labelText:
                                      "Type of Entrance (To) ",
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
                                  SizedBox(height: 1.0.h,),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 1.0.h,),
                          Text("Select Inventory (Size of Move)", style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                          SizedBox(height: 1.0.h,),
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
                                      "Size",
                                    ),
                                    hint: const Text("-- Select --"),
                                    value: selectSizeFlat,
                                    onChanged: (String? newValue) {
                                      setState(() {
                                        selectSizeFlat = newValue!;
                                      });
                                    },
                                    items: <String>[
                                      "1ft",
                                      "2ft",
                                      "3ft",

                                    ].map<DropdownMenuItem<String>>((String value) {
                                      return DropdownMenuItem<String>(
                                        value: value,
                                        child: Text(value),
                                      );
                                    }).toList(),
                                  ),
                                  SizedBox(height: 1.0.h,),
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
                                  Get.to(FlatRateArticles());
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
                )
                    :Expanded(
                  child:  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: SingleChildScrollView(
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
                                    SizedBox(height: 1.0.h,),
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
                                    SizedBox(height: 1.0.h,),
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
                                    SizedBox(height: 1.0.h,),
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
                                    SizedBox(height: 1.0.h,),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 1.0.h,),
                            Text("Delivery", style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                            SizedBox(height: 1.0.h,),
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
                                    SizedBox(height: 1.0.h,),
                                    DatePickerFormField(),
                                    SizedBox(height: 1.0.h,),
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
                                    SizedBox(height: 1.0.h,),

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
                )

              ],
            ),
          ),
        )
    );
  }
}