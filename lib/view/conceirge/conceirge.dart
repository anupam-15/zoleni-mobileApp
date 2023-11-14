import 'package:zoleni/exports/globle_exports.dart';
import 'package:zoleni/controller/conceirge_controller.dart';
import 'package:zoleni/view/conceirge/conceirege_sender_details.dart';
import 'package:zoleni/view/conceirge/conceirge_order_package_information.dart';
import 'package:zoleni/view/conceirge/conceirge_order_recevier.dart';
import '../../exports/get_export.dart';
import 'conceirge_order_payment_method.dart';

class Conceirge extends StatefulWidget {
  const Conceirge({super.key});

  @override
  State<Conceirge> createState()  {
    return
  _ConceirgeState();
}
}

class _ConceirgeState extends State<Conceirge> with TickerProviderStateMixin {
  final ConceirgeController conceirgeController = Get.put(ConceirgeController());
  @override
  void initState() {
    conceirgeController.tabController = TabController(length: 4, vsync: this,initialIndex: 2);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      body: TabBarView(
        physics: NeverScrollableScrollPhysics(),

        controller: conceirgeController.tabController,
        /*onPageChanged: (index){
          conceirgeController.jumptoPage(index);
        },*/
        children: [
          SenderDetails(tabController: conceirgeController.tabController),
          ConceirgeOrderRecevier(tabController: conceirgeController.tabController),
          ConceirgeOrderPackageInformation(tabController: conceirgeController.tabController),
          ConceirgeOrderWithPaymentMethod(tabController: conceirgeController.tabController),
        ],
      )
    );
  }
}
