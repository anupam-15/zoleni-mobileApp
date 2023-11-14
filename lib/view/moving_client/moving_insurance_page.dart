

import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zoleni/view/product/product_information.dart';


 

import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zoleni/view/product/product_information.dart';

import '../../exports/globle_exports.dart';
import '../../../exports/get_export.dart';
import '../widgets/appbar.dart';
import 'order_summary.dart';

class MovingInsurance extends StatefulWidget {
  const MovingInsurance({super.key});

  @override
  State<MovingInsurance> createState() => _MovingInsuranceState();
}

class _MovingInsuranceState extends State<MovingInsurance> {
  String? selectInsurance;
  String? selectTip;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(60.0),
          child: MyAppBar(
            title: 'Moving Form',
          )),
      body:SingleChildScrollView(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Card(
                  elevation: 2,
                  color:Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        DropdownButtonFormField<String>(
                          decoration: InputDecoration(
                            labelText: 'Do you need Insurance ?',
                          ),
                          hint: const Text('-- Select --'),
                          value: selectInsurance,
                          onChanged: (String? newValue) {
                            setState(() {
                              selectInsurance = newValue!;
                            });
                          },
                          items: <String>[
                            'Yes',
                            'No',
                          ].map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        ),
                        SizedBox(height: 10,),
                        DropdownButtonFormField<String>(
                          decoration: InputDecoration(
                            labelText: 'Driver Tip',
                          ),
                          hint: const Text('-- Select --'),
                          value: selectTip,
                          onChanged: (String? newValue) {
                            setState(() {
                              selectTip = newValue!;
                            });
                          },
                          items: <String>[
                            '\$5',
                            '\$10',
                            '\$15',
                          ].map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        ),
                        SizedBox(height: 10,),
                      ],
                    ),
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
                        Get.to(OrderSummary());
                      },
                      child: Text(
                        "Next",
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
      )
    );
  }
}
