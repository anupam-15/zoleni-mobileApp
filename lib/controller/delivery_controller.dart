import 'package:zoleni/exports/globle_exports.dart';
import 'package:get/get.dart';

class DeliveryController extends GetxController{
  late TabController tabController;
  String? selectType;
  String? selectOngoingType;
  String? selectedOpt;
  List<String> options = ['Now', 'Schedule', 'Next Day', 'Ongoing', 'Interactive', 'Multiorders - Same Pickup Location', 'Multiorders - Same Dropoff Location'];
  List<String> onGoingOptions = ['Daily', 'Weekly', 'Monthly'];

}

