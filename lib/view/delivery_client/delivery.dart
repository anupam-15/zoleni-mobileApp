
import 'package:zoleni/controller/delivery_controller.dart';
import 'package:zoleni/view/delivery_client/delivery_type.dart';

import '../../exports/get_export.dart';
import '../../exports/globle_exports.dart';


class Delivery extends StatefulWidget {
  const Delivery({super.key});

  @override
  State<Delivery> createState() => _DeliveryState();
  // State<Delivery> createState() {
  //   return _DeliveryState();
  // }
}

class _DeliveryState extends State<Delivery> with TickerProviderStateMixin{
  final DeliveryController deliveryController = Get.put(DeliveryController());

  @override
  void initState() {
    // TODO: implement initState
    deliveryController.tabController = TabController(length: 1, vsync: this,initialIndex: 0);
    super.initState();
  }
  String? selectType;
  String? selectOngoingType;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],

      body: TabBarView(
        physics: NeverScrollableScrollPhysics(),
        controller: deliveryController.tabController,
        children: [
          DeliveryTypePage(tabController: deliveryController.tabController),
        ],
      ),
    );
  }
}
