import 'package:flutter/material.dart';
import 'package:zoleni/controller/delivery_controller.dart';
import 'package:zoleni/view/delivery_client/Interactive/interactive_page.dart';
import 'package:zoleni/view/delivery_client/Multiorders%20Dropoff%20Location/multiorders_dropoff_sender.dart';
import 'package:zoleni/view/delivery_client/Multiorders%20Pickup%20Location/multiorders_pickup_sender.dart';
import 'package:zoleni/view/delivery_client/Next%20Day/next_day_delivery_sender.dart';
import 'package:zoleni/view/delivery_client/Delivery%20Now/now_delivery_order_sender.dart';
import 'package:zoleni/view/delivery_client/Ongoing/monthly_ongoing_delivery.dart';
import 'package:zoleni/view/delivery_client/Ongoing/ongoing_page.dart';
import 'package:zoleni/view/delivery_client/Ongoing/weekly_ongoing_delivery.dart';
import 'package:zoleni/view/delivery_client/Schedule/schedule_delivery_sender.dart';
import 'package:zoleni/exports/get_export.dart';
import 'package:zoleni/exports/globle_exports.dart';

class DeliveryTypePage extends StatefulWidget {
  final TabController tabController;

  const DeliveryTypePage({Key? key, required this.tabController})
      : super(key: key);

  @override
  _DeliveryTypePageState createState() => _DeliveryTypePageState();
}

class _DeliveryTypePageState extends State<DeliveryTypePage> {
  final DeliveryController deliveryController = Get.put(DeliveryController());

  /* String? selectType;
  String? selectOngoingType;*/

  Widget _getSelectedPage() {
    if (deliveryController.selectType == null) {
      return SizedBox.shrink();
    } else if (deliveryController.selectType == 'Ongoing') {
      if (deliveryController.selectOngoingType == null) {
        return SizedBox.shrink();
      } else {
        switch (deliveryController.selectOngoingType) {
          case 'Daily':
            return OngoingPage();
          case 'Weekly':
            return WeeeklyOngoingDelivery();
          case 'Monthly':
            return MonthlyOngoingDelivery();
          default:
            return SizedBox.shrink();
        }
      }
    } else {
      switch (deliveryController.selectType) {
        case 'Now':
          return NowDeliveryOrderSender();
        case 'Schedule':
          return ScheduleDeliverySender();
        case 'Next Day':
          return NextDayPageSender();
        case 'Ongoing':
          return OngoingPage();
        case 'Interactive':
          return InteractivePage();
        case 'Multiorders - Same Pickup Location':
          return MultiordersSamePickupSender();
        case 'Multiorders - Same Dropoff Location':
          return MultiordersSameDropoffSender();
        default:
          return SizedBox.shrink();
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: DropdownButtonFormField<String>(
              decoration: InputDecoration(
                labelText: 'Delivery Type',
              ),
              hint: const Text('-- Choose Delivery Type --'),
              value: deliveryController.selectType,
              onChanged: (String? newValue) {
                setState(() {
                  deliveryController.selectType = newValue!;
                });
              },
              items: <String>[
                'Now',
                'Schedule',
                'Next Day',
                'Ongoing',
                'Interactive',
                'Multiorders - Same Pickup Location',
                'Multiorders - Same Dropoff Location',
              ].map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
            floating: true,
            pinned: true,
            snap: true,
            backgroundColor: Colors.blue[50],
            elevation: 0,
            expandedHeight: 0,
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Visibility(
                      visible: deliveryController.selectType == "Ongoing",
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'On Going Delivery',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          DropdownButtonFormField<String>(
                            decoration: InputDecoration(
                              labelText: 'Delivery Type',
                            ),
                            hint: const Text('-- Choose Ongoing Type --'),
                            value: deliveryController.selectOngoingType,
                            onChanged: (String? newValue) {
                              setState(() {
                                deliveryController.selectOngoingType =
                                    newValue!;
                              });
                            },
                            items: <String>[
                              'Daily',
                              'Weekly',
                              'Monthly',
                            ].map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                          ),
                        ],
                      )),
                ],
              ),
            ),
          ),
          SliverFillRemaining(
            child: _getSelectedPage(),
          ),
        ],
      ),
    );
  }
}
