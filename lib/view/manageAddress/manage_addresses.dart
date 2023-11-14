

import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zoleni/view/product/product_information.dart';


 

import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zoleni/view/product/product_information.dart';

import '../../exports/globle_exports.dart';
import '../../../exports/get_export.dart';
import '../widgets/appbar.dart';
import 'add_address.dart';


class ManageAddress extends StatefulWidget {
  const ManageAddress({super.key});

  @override
  State<ManageAddress> createState() => _ManageAddressState();
}

class _ManageAddressState extends State<ManageAddress> {
  String _selectedStatus = "Active";

  List<String> statusOptions = ["Active", "Cancel"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#ECF0F3"),
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(60.0),
          child: MyAppBar(
            title: 'Manage Address',
          )),
      body: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: [
                Center(
                  child: ElevatedButton.icon(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => AddAddress()));
                    },
                    icon: Icon(
                      Icons.add_circle_outline_sharp,
                      size: 24.0,
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepOrange,
                    ),
                    label: Text('Add New'),
                  ),
                ),
                Card(
                  elevation: 3,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Text(
                                  "Name: ",
                                  style: TextStyle(
                                    fontSize: 14,
                                  ),
                                ),
                                Text(
                                  "Tonny R.",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.delete_forever_outlined,
                                  size: 24,
                                  color: Colors.grey,
                                ),
                                SizedBox(width: 10),
                                Icon(
                                  Icons.edit,
                                  size: 24,
                                  color: Colors.grey,
                                ),
                              ],
                            ),

                          ],
                        ),
                        Divider(thickness: 1,),
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            Text(
                              "Address: ",
                              style: TextStyle(
                                fontSize: 14,
                              ),
                            ),
                            Text(
                              "55 Bloor Street West,Toronto,ON,Canada",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Divider(thickness: 1,),
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            Text(
                              "Date:",
                              style: TextStyle(
                                fontSize: 14,
                              ),
                            ),
                            Text(
                              "Sep 06, 2023",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Divider(thickness: 1,),
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            Text(
                              "Status: ",
                              style: TextStyle(
                                fontSize: 14,
                              ),
                            ),
                            DropdownButton<String>(
                              value: _selectedStatus,
                              items: ["Active", "Disabled"].map((String status) {
                                return DropdownMenuItem<String>(
                                  value: status,
                                  child: Text(
                                    status,
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                );
                              }).toList(),
                              onChanged: (String? newValue) {
                                setState(() {
                                  _selectedStatus = newValue!;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),

                SizedBox(
                  height: 15,
                ),
                Container(
                  height: 6.0.h,
                  width: 35.0.w,
                  child: ElevatedButton(
                    onPressed: () {
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) => AddBusinessPage()));
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
