import 'package:zoleni/controller/profile_controller.dart';
import 'package:zoleni/view/widgets/back_buton.dart';

import '../../exports/get_export.dart';
import '../../exports/globle_exports.dart';
import '../../model/order_list_model.dart';
import '../order/order_details_screen.dart';

class YourOrders extends StatefulWidget {
  const YourOrders({super.key});

  @override
  State<YourOrders> createState() => _YourOrdersState();
}

class _YourOrdersState extends State<YourOrders> {
  final ProfileController profileController = Get.put(ProfileController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButon(
          onTap: (){
            Get.back();
          },
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          'All Orders',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.deepOrange
          ),
        ),
      ),
      backgroundColor: Colors.blue[50],
      body: Scaffold(
        appBar: AppBar(
          title: DropdownButtonFormField<String>(
            decoration: InputDecoration(
              labelText: 'Filter orders*',
            ),
            hint: const Text('-- Select --'),
            value: profileController.selectOrderType,
            onChanged: (String? newValue) {
              profileController.selectOrderType = newValue!;

              Get.forceAppUpdate();
            },
            items: <String>[
              'Concierge',
              'Storage',
              'Moving',
              'Delivery',
            ].map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
          backgroundColor: Colors.blue[50],
          elevation: 0,
          automaticallyImplyLeading: false,
        ),
        backgroundColor: Colors.blue[50],
        body: FutureBuilder<List<dynamic>>(
          future: profileController.getOrderList(),
          initialData: [],
          builder: (BuildContext context, AsyncSnapshot<List<dynamic>> data){
            if(data.hasData){
              final orderList = data.data;
              return ListView.builder(
                  itemCount: orderList!.length,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index){
                    return Card(
                      elevation: 0,
                      margin: EdgeInsets.symmetric(vertical: 5.0),
                      //color: Colors.deepOrange,
                      child: ListTile(
                        title: Text(orderList[index]['order_id'].toString()),
                        trailing: Text(orderList[index]['type'].toString() == 'null'? '' : orderList[index]['type']),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Order Date : ${orderList[index]['order_date']}"),
                            Text("Status Date : ${orderList[index]['status_date']}"),
                          ],
                        ),
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>OrderDetails(
                            orderDetails: orderList[index],
                          )));
                        },
                      ),
                    );
                  }
              );
            }else{
              return Center(
                child: Text("You don't have any previous orders"),
              );
            }
          },
        ),
      ),

    );
  }
}
