


import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zoleni/view/product/product_information.dart';


 

import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zoleni/view/product/product_information.dart';

import '../../exports/globle_exports.dart';
import '../../../exports/get_export.dart';
import '../widgets/appbar.dart';

class DeliveryOrderHistory extends StatefulWidget {
  const DeliveryOrderHistory({super.key});

  @override
  State<DeliveryOrderHistory> createState() => _DeliveryOrderHistoryState();
}

class _DeliveryOrderHistoryState extends State<DeliveryOrderHistory> {
  TextEditingController editingController = TextEditingController();

  final duplicateItems = List<String>.generate(10000, (i) => "Item $i");
  var items = <String>[];

  @override
  void initState() {
    items = duplicateItems;
    super.initState();
  }

  void filterSearchResults(String query) {
    setState(() {
      items = duplicateItems
          .where((item) => item.toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(60.0),
          child: MyAppBar(
            title: 'Delivery Order History',
          )),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Column(
            children: [
              Card(
                elevation: 2,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Center(
                        child: Text(
                          "Track Your Order",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextField(
                        onChanged: (value) {
                          filterSearchResults(value);
                        },
                        controller: editingController,
                        decoration: InputDecoration(
                          // labelText: "Search",
                            hintText: "Search",
                            prefixIcon: Icon(Icons.search),
                            suffixIcon: IconButton(
                              icon: Icon(Icons.clear),
                              onPressed: () => editingController.clear(),
                            ),
                            border: OutlineInputBorder(
                                borderRadius:
                                BorderRadius.all(Radius.circular(25.0)))),
                      ),
                    ],
                  ),
                ),
              ),
          //
              Card(
                elevation: 2,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Text("Order Number: "),
                              Text("OT1234TYXC", style: TextStyle(fontWeight: FontWeight.bold),),
                            ],
                          ),
                          Row(
                            children: [
                              Text("Orderd On: "),
                              Text("05/09/2023", style: TextStyle(fontWeight: FontWeight.bold),),
                            ],
                          ),
                        ],
                      ),
                      Divider(thickness: 1,),
                      SizedBox(height: 10,),
                      Text("Pickup", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                      Text("5500 Yonge Street, Toronto,North York, ON, Canada"),
                      Container(
                        color: Colors.grey[300],
                        child: Text("Tower Building: Pick up from reception desk"),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Text("Packages to Pickup: "),
                              Text("Flat Small", style: TextStyle(fontWeight: FontWeight.bold),),
                            ],
                          ),
                          Row(
                            children: [
                              Text("Quantity: "),
                              Text("5", style: TextStyle(fontWeight: FontWeight.bold),),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Text("Contact ", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Text("Name: "),
                              Text("Ranjan S", style: TextStyle(fontWeight: FontWeight.bold),),
                            ],
                          ),
                          Row(
                            children: [
                              Text("Suite: "),
                              Text("2", style: TextStyle(fontWeight: FontWeight.bold),),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text("Contact No.: "),
                          Text("8458965325", style: TextStyle(fontWeight: FontWeight.bold),),
                        ],
                      ),
                      Divider(thickness: 1,),
                      SizedBox(height: 10,),
                      Text("Dropoff", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                      Text("4000 Yonge Street, Toronto, North York, ON, Canada"),
                      Container(
                        color: Colors.grey[300],
                        child: Text("Tower Building: Pick up from reception desk"),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Text("Packages to Pickup: "),
                              Text("Flat Small", style: TextStyle(fontWeight: FontWeight.bold),),
                            ],
                          ),
                          Row(
                            children: [
                              Text("Quantity: "),
                              Text("5", style: TextStyle(fontWeight: FontWeight.bold),),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Text("If no one to receive in drop off location: "),
                          Text("Return", style: TextStyle(fontWeight: FontWeight.bold),),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Text("Contact ", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Text("Name: "),
                              Text("Tonny R", style: TextStyle(fontWeight: FontWeight.bold),),
                            ],
                          ),
                          Row(
                            children: [
                              Text("Suite: "),
                              Text("2", style: TextStyle(fontWeight: FontWeight.bold),),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text("Contact No.: "),
                          Text("8458965325", style: TextStyle(fontWeight: FontWeight.bold),),
                        ],
                      ),
                      Divider(thickness: 1,),
                      SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Text("Date: "),
                              Text("Sep,06 2023", style: TextStyle(fontWeight: FontWeight.bold),),
                            ],
                          ),
                          Row(
                            children: [
                              Text("Delivery Type: "),
                              Text("Next Day", style: TextStyle(fontWeight: FontWeight.bold),),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Text("Time: "),
                              Text("12:30 am", style: TextStyle(fontWeight: FontWeight.bold),),
                            ],
                          ),
                          Row(
                            children: [
                              Text("Price: "),
                              Text("\$22", style: TextStyle(fontWeight: FontWeight.bold),),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text("Status: "),
                          Text("Processing ", style: TextStyle(fontWeight: FontWeight.bold,color: Colors.deepOrange),),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Center(
                        child: ElevatedButton.icon(
                          onPressed: () {},
                          icon: Icon(Icons.location_on_outlined),
                          label: Text("Live Tracking"),
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.deepOrange),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ElevatedButton.icon(
                            onPressed: () {},
                            icon: Icon(Icons.note),
                            label: Text("Note"),
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.deepOrange),
                          ),
                          ElevatedButton.icon(
                            onPressed: () {},
                            icon: Icon(Icons.chat),
                            label: Text("Chat"),
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.deepOrange),
                          ),
                          ElevatedButton.icon(
                            onPressed: () {},
                            icon: Icon(Icons.print),
                            label: Text("Print"),
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.deepOrange),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ElevatedButton.icon(
                            onPressed: () {},
                            icon: Icon(
                              Icons.refresh_outlined,
                              size: 14,
                            ),
                            label: Text(
                              "Re-Order",
                              style: TextStyle(fontSize: 12),
                            ),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.deepOrange,
                            ),
                          ),
                          ElevatedButton.icon(
                            onPressed: () {},
                            icon: Icon(Icons.reviews_outlined, size: 14),
                            label: Text(
                              "Rate/Review",
                              style: TextStyle(fontSize: 12),
                            ),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.deepOrange,
                            ),
                          ),
                          ElevatedButton.icon(
                            onPressed: () {},
                            icon: Icon(Icons.cancel_presentation_rounded,
                                size: 14),
                            label: Text(
                              "Cancel Order",
                              style: TextStyle(fontSize: 12),
                            ),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.deepOrange,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
