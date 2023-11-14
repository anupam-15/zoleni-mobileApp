

import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zoleni/view/product/product_information.dart';


 

import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zoleni/view/product/product_information.dart';

import '../../exports/globle_exports.dart';
import '../../../exports/get_export.dart';
import '../widgets/appbar.dart';
import 'moving_order_history.dart';

class OrderSummary extends StatefulWidget {
  const OrderSummary({super.key});

  @override
  State<OrderSummary> createState() => _OrderSummaryState();
}

class _OrderSummaryState extends State<OrderSummary> {
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
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Delivery Date:"),
                            Text("Sep,09 2020 at 05.00 pm",  style: TextStyle(fontWeight: FontWeight.bold),),
                            Text('Price:',  style: TextStyle(fontWeight: FontWeight.bold),),
                            Icon(Icons.delete)
                          ],
                        ),
                        Row(children: [
                          Text('Delivery Type: '),
                          Text('Per Hour',style: TextStyle(fontWeight: FontWeight.bold),),
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
                SizedBox(height: 10,),
                Card(
                  elevation: 2,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Itemtotal:"),
                            Text("\$221.00", style: TextStyle(fontWeight: FontWeight.bold),),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Insurance Claimed(\$100.00):"),
                            Text("\50.00", style: TextStyle(fontWeight: FontWeight.bold),),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Driver’s Tip (10%):"),
                            Text("\22.00", style: TextStyle(fontWeight: FontWeight.bold),),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Sub Total:"),
                            Text("\293.00", style: TextStyle(fontWeight: FontWeight.bold),),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Tax:"),
                            Text("\29.00", style: TextStyle(fontWeight: FontWeight.bold),),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("You Pay:"),
                            Text("\$322.41", style: TextStyle(fontWeight: FontWeight.bold),),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Card(
                  elevation: 3,
                  color: Colors.white,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            SizedBox.fromSize(
                              // size: Size(56, 56),
                              child: Material(
                                //color: Colors.greenAccent,
                                child: InkWell(
                                  //splashColor: Colors.green,
                                  onTap: () {},
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Image.asset("assets/images/Visa.png"),
                                      Text("Credit Card"),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            SizedBox.fromSize(
                              // size: Size(56, 56),
                              child: Material(
                                //color: Colors.greenAccent,
                                child: InkWell(
                                  //splashColor: Colors.green,
                                  onTap: () {},
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Image.asset("assets/images/Paypal.png"),
                                      Text("Paypal"),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            SizedBox.fromSize(
                              // size: Size(56, 56),
                              child: Material(
                                //color: Colors.greenAccent,
                                child: InkWell(
                                  //splashColor: Colors.green,
                                  onTap: () {},
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Image.asset(
                                          "assets/images/Split Account Png.png"),
                                      Text("Split"),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            SizedBox.fromSize(
                              // size: Size(56, 56),
                              child: Material(
                                //color: Colors.greenAccent,
                                child: InkWell(
                                  //splashColor: Colors.green,
                                  onTap: () {},
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Image.asset("assets/images/Promo.png"),
                                      Text("Promo Code"),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
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
                        Get.to(MovingOrderHistory());
                      },
                      child: Text(
                        "Checkout",
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



