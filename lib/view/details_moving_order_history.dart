


import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zoleni/view/widgets/appbar.dart';


import '../../constant/appcolors.dart';
import '../../exports/globle_exports.dart';

class DetailsMovingOrderHistory extends StatefulWidget {
  final String deliveryDate;
  final String price;
  final String deliveryType;
  final String status;

  DetailsMovingOrderHistory({
    required this.deliveryDate,
    required this.price,
    required this.deliveryType,
    required this.status,
  });

  @override
  State<DetailsMovingOrderHistory> createState() => _DetailsMovingOrderHistoryState();
}

class _DetailsMovingOrderHistoryState extends State<DetailsMovingOrderHistory> {
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
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text("Delivery Date:"),
                            Text(widget.deliveryDate,  style: TextStyle(fontWeight: FontWeight.bold),),
                            Text('Price:',  style: TextStyle(fontWeight: FontWeight.bold),),
                            Text(widget.price,),
                          ],
                        ),
                        Row(children: [
                          Text('Delivery Type: '),
                          Text(' ${widget.deliveryType}',style: TextStyle(fontWeight: FontWeight.bold),),
                        ],),
                        Row(children: [
                          Text('Status: '),
                          Text(' ${widget.status}',style: TextStyle(fontWeight: FontWeight.bold, color: Colors.deepOrange),),
                        ],),
                        Divider(thickness: 1,),
                        SizedBox(height: 5,),
                        Text("Pickup", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                        Text("5500 Yonge Street, Toronto,North York, ON, Canada"),
                        Text("Dropoff",  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                        Text("4000 Yonge Street, Toronto, North York, ON, Canada"),
                        Divider(thickness: 1,),
                        SizedBox(height: 5,),
                        Text("Loading/Unloading Help", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                        Row(children: [
                          Text("Truck Size: "),
                          Text(" 10ft", style: TextStyle(fontWeight: FontWeight.bold),),
                        ],),
                        Row(children: [
                          Text("No. of worker/labour Required: "),
                          Text(" 5", style: TextStyle(fontWeight: FontWeight.bold),),
                        ],),
                        Row(children: [
                          Text("Packing Hours: "),
                          Text("6 hrs", style: TextStyle(fontWeight: FontWeight.bold),),
                        ],),
                        Row(children: [
                          Text("Loading / Unloading Hours: "),
                          Text("6 hrs", style: TextStyle(fontWeight: FontWeight.bold),),
                        ],),
                        Text("Moving Info.", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                        Row(children: [
                          Text("Building Type: "),
                          Text("Apartment", style: TextStyle(fontWeight: FontWeight.bold),),
                        ],),
                        Row(children: [
                          Text("Type of Entrance (From): "),
                          Text("Elevator", style: TextStyle(fontWeight: FontWeight.bold),),
                        ],),
                        Row(children: [
                          Text("Type of Entrance (To): "),
                          Text("Private House", style: TextStyle(fontWeight: FontWeight.bold),),
                        ],),
                        Divider(thickness: 1,),
                        SizedBox(height: 5,),
                        Row(children: [
                          Text("Inventory: "),
                          Text("Area Size: 2500-3500 sq. ft.", style: TextStyle(fontWeight: FontWeight.bold),),
                        ],),
                        Text("Special Articles", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Any item over 150 Lbs"),
                            Text("Baby Piano"),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Heavy Gym Equipment"),
                            Text("Pool Table"),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Upright Piano"),
                            // Text("Pool Table"),
                          ],
                        ),
                        SizedBox(height: 5,),
                        Text("Moving Supplies", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                        Row(children: [
                          Text("Furniture Pads: "),
                          Text("6", style: TextStyle(fontWeight: FontWeight.bold),),
                        ],),
                        Row(children: [
                          Text("Heavy Duty Pr-Stretched Wrap: "),
                          Text("7", style: TextStyle(fontWeight: FontWeight.bold),),
                        ],),
                        Row(children: [
                          Text("Moving Bubble Wrap: "),
                          Text("7", style: TextStyle(fontWeight: FontWeight.bold),),
                        ],),
                        Row(children: [
                          Text("Standard Pr-Stretched Wrap: "),
                          Text("8", style: TextStyle(fontWeight: FontWeight.bold),),
                        ],),
                      ],
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
