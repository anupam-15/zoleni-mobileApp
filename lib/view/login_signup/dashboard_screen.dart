import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zoleni/controller/profile_controller.dart';

import '../order/order_details_screen.dart';

import '../../exports/globle_exports.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  final ProfileController profileController = Get.put(ProfileController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      /* appBar: PreferredSize(
          preferredSize: Size.fromHeight(60.0),
          child: MyAppBar(
            title: 'Dashboard',
          )),*/
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Recent Delivery Order',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                Divider(
                  thickness: 1,
                ),
                Container(
                  height: 15.0.h,
                  child: FutureBuilder<List<dynamic>>(
                    future: profileController.getOrderList(),
                    initialData: const [],
                    builder: (BuildContext context,
                        AsyncSnapshot<List<dynamic>> data) {
                      if (data.hasData) {
                        final orderList = data.data!
                            .where((element) => element['type'] == 'now')
                            .toList();
                       /* print('orderList.length');
                        print('data.data!');
                        print(orderList.length);
                        print(data.data!.length);*/
                        if(orderList.isEmpty){
                          return const Center(child: CircularProgressIndicator());
                        }else{
                          return ListView.builder(
                              itemCount: 1,
                              scrollDirection: Axis.vertical,
                              itemBuilder: (context, index) {
                                return Card(
                                  elevation: 0,
                                  // color: Colors.redAccent,
                                  margin: EdgeInsets.symmetric(vertical: 5.0),
                                  child: ListTile(
                                    title:
                                    Text("${orderList[index]['order_id']}"),
                                    subtitle: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                            "Order Date : ${orderList[index]['order_date']}"),
                                        Text(
                                            "Status Date : ${orderList[index]['status_date']}"),
                                      ],
                                    ),
                                    trailing: Text(
                                        orderList[index]['type'].toString() =='null'? '': orderList[index]['type']),
                                    onTap: () {
                                      Get.to(OrderDetails(orderDetails: orderList[index],));
                                    },
                                  ),
                                );
                              });
                        }

                      } else {
                        return Center(
                          child: Text("You don't have any previous orders"),
                        );
                      }
                    },
                  ),
                ),
                Text(
                  'Recent Concierge Order',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                Divider(
                  thickness: 1,
                ),
                Container(
                  height: 15.0.h,
                  child: FutureBuilder<List<dynamic>>(
                    future: profileController.getOrderList(),
                    initialData: [],
                    builder: (BuildContext context,
                        AsyncSnapshot<List<dynamic>> data) {
                      if (data.hasData) {
                        final orderList = data.data!
                            .where((element) => element['type'] == 'nextday')
                            .toList();
                        /* print('orderList.length');
                        print('data.data!');
                        print(orderList.length);
                        print(data.data!.length);*/

                        if(orderList.isEmpty){
                          return Center(child: CircularProgressIndicator());
                        }else{
                          return ListView.builder(
                              itemCount: 1,
                              scrollDirection: Axis.vertical,
                              itemBuilder: (context, index) {
                                return Card(
                                  elevation: 0,
                                  // color: Colors.redAccent,
                                  margin: EdgeInsets.symmetric(vertical: 5.0),
                                  child: ListTile(
                                    title:
                                    Text("${orderList[index]['order_id']}"),
                                    subtitle: Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                            "Order Date : ${orderList[index]['order_date']}"),
                                        Text(
                                            "Status Date : ${orderList[index]['status_date']}"),
                                      ],
                                    ),
                                    trailing: Text(
                                        orderList[index]['type'].toString() =='null'? '': orderList[index]['type']),
                                    onTap: () {
                                      Get.to(OrderDetails(orderDetails: orderList[index],));
                                    },
                                  ),
                                );
                              });
                        }
                      } else {
                        return Center(
                          child: Text("You don't have any previous orders"),
                        );
                      }
                    },
                  ),
                ),
                Text(
                  'Recent Moving Order',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                Divider(
                  thickness: 1,
                ),
                Container(
                  height: 15.0.h,
                  child: FutureBuilder<List<dynamic>>(
                    future: profileController.getOrderList(),
                    initialData: [],
                    builder: (BuildContext context,
                        AsyncSnapshot<List<dynamic>> data) {
                      if (data.hasData) {
                        final orderList = data.data!
                            .where((element) => element['type'] == 'ongoing')
                            .toList();
                        /* print('orderList.length');
                        print('data.data!');
                        print(orderList.length);
                        print(data.data!.length);*/
                        if(orderList.isEmpty){
                          return Center(child: CircularProgressIndicator());
                        }else{
                          return ListView.builder(
                              itemCount: 1,
                              scrollDirection: Axis.vertical,
                              itemBuilder: (context, index) {
                                return Card(
                                  elevation: 0,
                                  // color: Colors.redAccent,
                                  margin: EdgeInsets.symmetric(vertical: 5.0),
                                  child: ListTile(
                                    title:
                                    Text("${orderList[index]['order_id']}"),
                                    subtitle: Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                            "Order Date : ${orderList[index]['order_date']}"),
                                        Text(
                                            "Status Date : ${orderList[index]['status_date']}"),
                                      ],
                                    ),
                                    trailing: Text(
                                        orderList[index]['type'].toString() =='null'? '': orderList[index]['type']),
                                    onTap: () {
                                      Get.to(OrderDetails(orderDetails: orderList[index],));
                                    },
                                  ),
                                );
                              });
                        }

                      } else {
                        return Center(
                          child: Text("You don't have any previous orders"),
                        );
                      }
                    },
                  ),
                ),
                Text(
                  'Recent storage booking',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                Divider(
                  thickness: 1,
                ),
                Container(
                  height: 15.0.h,
                  child: FutureBuilder<List<dynamic>>(
                    future: profileController.getOrderList(),
                    initialData: [],
                    builder: (BuildContext context,
                        AsyncSnapshot<List<dynamic>> data) {
                      if (data.hasData) {
                        final orderList = data.data!
                            .where((element) => element['type'] == 'interactive')
                            .toList();
                        /* print('orderList.length');
                        print('data.data!');
                        print(orderList.length);
                        print(data.data!.length);*/
                        if(orderList.isEmpty){
                          return Center(child: CircularProgressIndicator());
                        }else{
                          return ListView.builder(
                              itemCount: 1,
                              scrollDirection: Axis.vertical,
                              itemBuilder: (context, index) {
                                return Card(
                                  elevation: 0,
                                  // color: Colors.redAccent,
                                  margin: EdgeInsets.symmetric(vertical: 5.0),
                                  child: ListTile(
                                    title:
                                    Text("${orderList[index]['order_id']}"),
                                    subtitle: Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                            "Order Date : ${orderList[index]['order_date']}"),
                                        Text(
                                            "Status Date : ${orderList[index]['status_date']}"),
                                      ],
                                    ),
                                    trailing: Text(
                                        orderList[index]['type'].toString() =='null'? '': orderList[index]['type']),
                                    onTap: () {
                                      Get.to(OrderDetails(orderDetails: orderList[index],));
                                    },
                                  ),
                                );
                              });
                        }

                      } else {
                        return Center(
                          child: Text("You don't have any previous orders"),
                        );
                      }
                    },
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
