


import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zoleni/view/product/product_information.dart';


 

import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zoleni/view/product/product_information.dart';

import '../../exports/globle_exports.dart';
import '../../../exports/get_export.dart';
import '../order/order_quote_details.dart';
import '../widgets/appbar.dart';

class DeliveryPackageInformation extends StatefulWidget {
  const DeliveryPackageInformation({super.key});

  @override
  State<DeliveryPackageInformation> createState() =>
      _DeliveryPackageInformationState();
}

class _DeliveryPackageInformationState
    extends State<DeliveryPackageInformation> {
  String? selectDropSelect;
  String? selectUnit;
  String? selectDropDownSelect;
  String? selectInsurance;
  String? selectDriverTip;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(60.0),
          child: MyAppBar(
            title: 'Delivery Order Form',
          )),
      body: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: [
                Text(
                  "Package Information",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Card(
                  elevation: 2,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        DropdownButtonFormField<String>(
                          decoration: InputDecoration(
                            labelText:
                                "Select",
                          ),
                          hint: const Text("-- *** --"),
                          value: selectDropSelect,
                          onChanged: (String? newValue) {
                            setState(() {
                              selectDropSelect = newValue!;
                            });
                          },
                          items: <String>[
                            "abc",
                            "bcd"
                          ].map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        DropdownButtonFormField<String>(
                          decoration: InputDecoration(
                            labelText: "Unit",
                          ),
                          hint: const Text("QTY"),
                          value: selectUnit,
                          onChanged: (String? newValue) {
                            setState(() {
                              selectUnit = newValue!;
                            });
                          },
                          items: <String>[
                            "Yes",
                            "No",
                          ].map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        DropdownButtonFormField<String>(
                          decoration: InputDecoration(
                            labelText:
                            "Select",
                          ),
                          hint: const Text("-- *** --"),
                          value: selectDropDownSelect,
                          onChanged: (String? newValue) {
                            setState(() {
                              selectDropDownSelect = newValue!;
                            });
                          },
                          items: <String>[
                            "abc",
                            "bcd"
                          ].map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Icon(Icons.delete_forever_outlined),
                            SizedBox(width: 5,),
                            ElevatedButton.icon(
                              onPressed: () {},
                              icon: Icon(
                                Icons.add,
                                size: 24.0,
                              ),
                              label: Text('Add More Packages'),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.deepOrange
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        DropdownButtonFormField<String>(
                          decoration: InputDecoration(
                            labelText: "Do you need Insurance ?",
                          ),
                          hint: const Text("-- Select --"),
                          value: selectInsurance,
                          onChanged: (String? newValue) {
                            setState(() {
                              selectInsurance = newValue!;
                            });
                          },
                          items: <String>[
                            "Yes",
                            "No",
                          ].map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        DropdownButtonFormField<String>(
                          decoration: InputDecoration(
                            labelText:
                                "Driver Tip",
                          ),
                          hint: const Text("-- Select Tip --"),
                          value: selectDriverTip,
                          onChanged: (String? newValue) {
                            setState(() {
                              selectDriverTip = newValue!;
                            });
                          },
                          items: <String>[
                            "\$10",
                            "\$15",
                            "\$20",
                          ].map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 15,),
                Center(
                  child: Container(
                    height: 6.0.h,
                    width: 35.0.w,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => OrderQuoteDetails()));
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
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
