


import '../exports/globle_exports.dart';
import 'package:flutter/material.dart';
import 'package:zoleni/view/widgets/appbar.dart';



import 'package:flutter/services.dart';

class DetailsStorageOrderHistory extends StatefulWidget {
  final String Storage;
  final String Unit;
  final String date;
  const DetailsStorageOrderHistory({super.key,
    required this.Storage,
    required this.Unit,
    required this.date});

  @override
  State<DetailsStorageOrderHistory> createState() => _DetailsStorageOrderHistoryState();
}

class _DetailsStorageOrderHistoryState extends State<DetailsStorageOrderHistory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(60.0),
          child: MyAppBar(
            title: 'Order History Details',
          )),
      body: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Card(
                  elevation: 2,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        Row(children: [
                          Text('Storage/Unit: '),
                          Text(' ${widget.Storage}',style: TextStyle(fontWeight: FontWeight.bold),),
                        ],),
                        Row(children: [
                          Text('Unit: '),
                          Text(' ${widget.Unit}',style: TextStyle(fontWeight: FontWeight.bold, ),),
                        ],),
                        Row(children: [
                          Text('Date: '),
                          Text(' ${widget.date}',style: TextStyle(fontWeight: FontWeight.bold, ),),
                        ],),
                        Divider(thickness: 1,),
                        SizedBox(height: 5,),
                        Text("Booking:", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),

                        Row(children: [
                          Text("Rent: "),
                          Text(" \$10.00", style: TextStyle(fontWeight: FontWeight.bold),),
                        ],),
                        Row(children: [
                          Text("For How Many Day: "),
                          Text("Day for 7 Days", style: TextStyle(fontWeight: FontWeight.bold),),
                        ],), Row(children: [
                          Text("Move-in Date: "),
                          Text("Sep 01, 2023", style: TextStyle(fontWeight: FontWeight.bold),),
                        ],),


                        Divider(thickness: 1,),
                        SizedBox(height: 5,),
                        Text("Booked By:", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                        Row(children: [
                          Text("Name: "),
                          Text("Ayush", style: TextStyle(fontWeight: FontWeight.bold),),
                        ],),
                        Row(children: [
                          Text("Email: "),
                          Text("ayush@gmail.com", style: TextStyle(fontWeight: FontWeight.bold),),
                        ],),
                        Row(children: [
                          Text("Contact No.: "),
                          Text("8596596586", style: TextStyle(fontWeight: FontWeight.bold),),
                        ],),
                        Row(children: [
                          Text("Status "),
                          Text("Approved", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blueAccent),),
                        ],),

                        Divider(thickness: 1,),
                        SizedBox(height: 5,),
                        Text("Message from Ayush"),
                        Text("Pls place your safely", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                        Text("Following documents uploaded"),
                        Text("ID Proof", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                        Divider(thickness: 1,),
                        SizedBox(height: 5,),
                        Text("Following questions answered:", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                        Text("What is your nationality?"),
                        Text("India", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                        Text("Where are you from?"),
                        Text("Noida", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                        Text("Are you Canadian?"),
                        Text("No", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 15,),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton.icon(
                        onPressed: () {},
                        icon: Icon(
                          Icons.print,
                          size: 24.0,
                        ),
                        label: Text('Print'),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.deepOrange,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25.0),
                          ),
                        ),
                      ),
                      SizedBox(width: 20,),
                      ElevatedButton.icon(
                        onPressed: () {},
                        icon: Icon(
                          Icons.note,
                          size: 24.0,
                        ),
                        label: Text('Note'),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.deepOrange,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25.0),
                          ),
                        ),
                      ),
                    ],
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

