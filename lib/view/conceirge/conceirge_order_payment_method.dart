import 'package:zoleni/Network/api_functions.dart';
import 'package:zoleni/controller/home_controller.dart';
import 'package:zoleni/exports/globle_exports.dart';
import 'package:zoleni/controller/conceirge_controller.dart';
import 'package:zoleni/view/conceirge_order/recent_concierge_order.dart';
import 'package:zoleni/view/widgets/appbar.dart';

import '../../exports/get_export.dart';
import '../../model/payment_method_model.dart';
import '../../model/promo_code_response_model.dart';
import '../widgets/back_buton.dart';

class ConceirgeOrderWithPaymentMethod extends StatefulWidget {
  final TabController tabController;
  const ConceirgeOrderWithPaymentMethod({super.key, required this.tabController});

  @override
  State<ConceirgeOrderWithPaymentMethod> createState() =>
      _ConceirgeOrderWithPaymentMethodState();
}

class _ConceirgeOrderWithPaymentMethodState
    extends State<ConceirgeOrderWithPaymentMethod> {
  final ConceirgeController conceirgeController = Get.put(ConceirgeController());
  @override
  void initState() {
    conceirgeController.originalAmount = conceirgeController.checkOutAmount;
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      appBar: AppBar(
        leading: BackButon(
            onTap: (){
              widget.tabController.animateTo(2);
            }
        ),
        title: Text(
          "Order Quote Details",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
              color: Colors.black
          ),
        ),
        backgroundColor: Colors.blue[50],
        elevation: 0,
      ),
      body: Container(
        margin: EdgeInsets.all(12.0),
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 0.0),
          children: [
            Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text(
                              "Sender Details",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.delete_forever_outlined,
                              size: 24,
                              color: Colors.grey,
                            ),
                            SizedBox(width: 10),
                            Icon(
                              Icons.edit,
                              size: 24,
                              color: Colors.grey,
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "Name: ",
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                        Text(
                          "Tonny R",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "Contact No.: ",
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                        Text(
                          "+91-8956856956",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Text(
                          "Receiver Details",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "Name: ",
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                        Text(
                          "Ranjan S",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "Contact No.: ",
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                        Text(
                          "+91-8458965325",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "Email: ",
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                        Text(
                          "ranjan@gmail.com",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Divider(
                      thickness: 1,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text(
                              "Quantity:",
                              style: TextStyle(
                                fontSize: 14,
                              ),
                            ),
                            Text(
                              "2",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              "Package Type: ",
                              style: TextStyle(
                                fontSize: 14,
                              ),
                            ),
                            Text(
                              "Envelope",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text(
                              "Delivery Type: ",
                              style: TextStyle(
                                fontSize: 14,
                              ),
                            ),
                            Text(
                              "Conceirge",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              "Facility: ",
                              style: TextStyle(
                                fontSize: 14,
                              ),
                            ),
                            Text(
                              "Security Guard",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      color: Colors.amber[100],
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          children: [
                            Text(
                              "Vidur Limited",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text("10 Toronto Street, Toronto, ON, Canada"),

                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text(
                              "Subtotal:",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [Text("190.00")],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text(
                              "Insurance:",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [Text("50.00")],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text(
                              "Tax:",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [Text("8.00")],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Visibility(
                      visible: conceirgeController.promoCodeAmount == 0 ? false:true,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Text(
                                "Promo Code:",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [Text('-${conceirgeController.promoCodeAmount.toString()}')],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text(
                              "You Pay:",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [Text(conceirgeController.checkOutAmount.toString())],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Choose Payment Method",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 100.0,
              width: MediaQuery.of(context).size.width,
              child: FutureBuilder<List<PaymentMethodModel>>(
                  future: conceirgeController.getPaymentMethodList(),
                  initialData: [],
                  builder: (BuildContext context,AsyncSnapshot<List<PaymentMethodModel>> data){
                    if(data.hasData){
                      final paymentList = data.data;
                      return ListView.builder(
                          itemCount: paymentList!.length,
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context,index){
                            return SizedBox(
                              width: 90,
                              child: Material(
                                color: Colors.transparent,
                                child: InkWell(
                                  onTap: () async {
                                    print(index);
                                    if(index == 3){
                                      await promoCodeSelection();
                                      conceirgeController.checkSelection(index);
                                      Get.forceAppUpdate();
                                    }else {
                                      conceirgeController.checkSelection(index);
                                      Get.forceAppUpdate();
                                    }
                                  },
                                  child: Container(
                                    color: conceirgeController.activeIndex==index?AppColors.AppOrangeColor:Colors.white,
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: <Widget>[
                                        Image.asset(paymentList[index].assets),
                                        Text(
                                          paymentList[index].name,
                                          style: TextStyle(
                                              color: conceirgeController.activeIndex==index && conceirgeController.activeIndex !=null?Colors.white:Colors.black,
                                              fontWeight: FontWeight.bold
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            );
                          }
                      );
                    }else{
                      return Container();
                    }
                  }
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 50,
                width: 150,
                child: ElevatedButton(
                  onPressed:(){
                    conceirgeController.makePayment(conceirgeController.checkOutAmount);
          /*          switch (conceirgeController.activeIndex){
                      case 0:

                        Get.forceAppUpdate();
                      case 1:

                      case 2:

                      case 3:
                        promoCodeSelection();
                    }*/

                    },
                  child: Text(
                    "Checkout",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: conceirgeController.activeIndex == null? Colors.grey:AppColors.AppOrangeColor,
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
    );
  }
  promoCodeSelection()async{
    conceirgeController.promoCodeAmount =
    await showDialog(
        context: context,
        builder: (context){
          return Dialog.fullscreen(
            child: Scaffold(
              body: FutureBuilder<List<PromoCode>>(
                future: HomeController().getPromoCode(),
                initialData: [],
                builder: (BuildContext context,AsyncSnapshot<List<PromoCode>> data){
                  if(data.hasData){
                    final promoCodeList = data.data;
                    return ListView.builder(
                      itemCount: promoCodeList!.length,
                        itemBuilder: (context,index){
                        return Card(
                          child: ListTile(
                            title: Text(promoCodeList[index].code),
                            onTap: (){
                              Navigator.pop(context,double.parse(promoCodeList[index].amount));
                            },
                          ),
                        );
                        }
                    );
                  }else{
                    return Center(
                      child: Text('No Promo Code Available'),
                    );
                  }
                },
              ),
            ),
          );
        }
    );
    if(conceirgeController.originalAmount == conceirgeController.checkOutAmount) {
      conceirgeController.checkOutAmount = conceirgeController.checkOutAmount -
          conceirgeController.promoCodeAmount;
    }else{
      conceirgeController.checkOutAmount = conceirgeController.originalAmount -
          conceirgeController.promoCodeAmount;
    }
    Get.forceAppUpdate();
    //conceirgeController.makePayment(conceirgeController.checkOutAmount);
  }
}
