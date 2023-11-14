

import 'package:order_tracker_zen/order_tracker_zen.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zoleni/view/widgets/appbar.dart';


import '../../constant/appcolors.dart';
import '../../exports/globle_exports.dart';

class TrackOrder extends StatefulWidget {
  const TrackOrder({super.key});

  @override
  State<TrackOrder> createState() => _TrackOrderState();
}

class _TrackOrderState extends State<TrackOrder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(60.0),
          child: MyAppBar(
            title: 'Track Order',
          )),
      body: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(child: Text("Estimate Delivery Time")),
                SizedBox(
                  height: 5,
                ),
                Center(
                    child: Text(
                  "11:55 AM ",
                  style: TextStyle(
                      color: Colors.deepOrange,
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                )),
                SizedBox(
                  height: 5,
                ),
                Center(child: Text("03/17/2020")),
                SizedBox(
                  height: 5,
                ),
                Divider(
                  thickness: 1,
                ),
                Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.greenAccent,
                      radius: 30,
                      backgroundImage: AssetImage("assets/images/UserIcon.png"),
                    ),
                    SizedBox(width: 16),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Your Delivery Rider",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 14,
                          ),
                        ),
                        Text(
                          "David Robort",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    IconButton(
                      icon: Icon(
                        Icons.message_outlined,
                        color: Colors.grey,
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  color: HexColor(" #A7AAB2"),
                  child: OrderTrackerZen(
                    tracker_data: [
                      TrackerData(
                        title: "Order confirmed",
                        date: "03/17/2020",
                        tracker_details: [
                          TrackerDetails(
                            title: "Order Number: OT123456XA",
                            datetime: "08:50 AM",
                          ),
                        ],
                      ),
                      TrackerData(
                        title: "Preparing your order",
                        date: "",
                        tracker_details: [
                          TrackerDetails(
                            title: "Preparing your order",
                            datetime: "08:57 AM \n 03/17/2020",
                          ),
                        ],
                      ),
                      TrackerData(
                        title: "Rider is picking up your order",
                        date: "",
                        tracker_details: [
                          TrackerDetails(
                            title: "100 King Street West, Toronto, ON, Canada",
                            datetime: "Sat, 8 Apr '22 - 17:51",
                          ),
                        ],
                      ),
                      TrackerData(
                        title: "Rider is nearby your place",
                        date: "",
                        tracker_details: [
                          TrackerDetails(
                            title: "Rider is nearby your place",
                            datetime: "08:57 AM \n 03/17/2020",
                          ),
                        ],
                      ),
                      TrackerData(
                        title: "Drop-off Package",
                        date: "",
                        tracker_details: [
                          TrackerDetails(
                            title: "5000 Yonge Street, Toronto, ON, Canada",
                            datetime: "08:57 AM \n 03/17/2020",
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 22.0.h,
                  child: Card(
                    elevation: 5,
                    color: Colors.white,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 30,
                        ),
                        Center(
                          child: Container(
                            height: 6.0.h,
                            width: 35.0.w,
                            child: ElevatedButton(
                              onPressed: () {
                                /*Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => HomeScreen(datum: null,)));*/
                              },
                              child: Text(
                                "Confirm Order Received",
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
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
