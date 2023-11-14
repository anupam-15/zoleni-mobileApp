


import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zoleni/view/product/product_information.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zoleni/view/product/product_information.dart';

import '../../exports/globle_exports.dart';
import '../../exports/get_export.dart';
import '../details_moving_order_history.dart';
import '../widgets/appbar.dart';
import '../widgets/datetextformfield.dart';
import 'moving_information_page.dart';

 

import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zoleni/view/product/product_information.dart';

import '../../exports/globle_exports.dart';
import '../../../exports/get_export.dart';
import '../widgets/appbar.dart';

class MovingOrderHistory extends StatefulWidget {
  const MovingOrderHistory({super.key});

  @override
  State<MovingOrderHistory> createState() => _MovingOrderHistoryState();
}

class _MovingOrderHistoryState extends State<MovingOrderHistory> {
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
            title: 'Order History',
          )),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
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
              Expanded(
                child: ListView.builder(
                  shrinkWrap: true,
                  //itemCount: items.length,
                  itemCount: items.length > 5 ? 5 : items.length,
                  itemBuilder: (context, index) {
                    return _listView();
                    //   ListTile(
                    //   title: Text('${items[index]}'),
                    // );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _listView() => Card(
      color: Colors.white,
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            ListTile(
              onTap: (){
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => DetailsMovingOrderHistory(
                      deliveryDate: 'Sep,06 2020 at 04.00am',
                      price: '\$322.41',
                      deliveryType: 'Per Hour',
                      status: 'Processing',
                    ),
                  ),
                );
              },
              title: Row(
                children: [
                  Text(
                    'Order Id: ',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'xxxxx',
                    style: TextStyle(color: Colors.black),
                  ),
                ],
              ),
              trailing:
              Column(
                children: [
                  Text("Price:"),
                  Text("\$322.41", style: TextStyle(fontWeight: FontWeight.bold),),
                ],
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        'Delivery: ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Sep,06 2020 at 04.00am',
                        style: TextStyle(color: Colors.black87,fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'Delivery Type: ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Per Hour',
                        style: TextStyle(color: Colors.black87,fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'Status: ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Processing',
                        style: TextStyle(color: Colors.deepOrange,fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),

                ],
              ),

            )
          ],
        ),
      ),
    );
}
