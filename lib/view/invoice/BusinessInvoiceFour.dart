



import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zoleni/view/product/product_information.dart';


 

import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zoleni/view/product/product_information.dart';

import '../../exports/globle_exports.dart';
import '../../../exports/get_export.dart';
import '../widgets/appbar.dart';
import 'business_invoice_summary.dart';

class BusinessInvoiceFour extends StatefulWidget {
  const BusinessInvoiceFour({super.key});

  @override
  State<BusinessInvoiceFour> createState() => _BusinessInvoiceFourState();
}

class _BusinessInvoiceFourState extends State<BusinessInvoiceFour> {
  String? selectStatus;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(60.0),
          child: MyAppBar(
            title: 'Invoice',
          )),
      body: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Discounts",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                Card(
                  elevation: 3,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Amount"),
                        SizedBox(
                          height: 5,
                        ),
                        TextFormField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              // border: OutlineInputBorder(),
                              ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text("Percentage"),
                        SizedBox(
                          height: 5,
                        ),
                        TextFormField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              //border: OutlineInputBorder(),
                              ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Tax",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text("Tax Name"),
                        SizedBox(
                          height: 5,
                        ),
                        TextFormField(
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                              // border: OutlineInputBorder(),
                              ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text("Tax Rate (%)"),
                        SizedBox(
                          height: 5,
                        ),
                        TextFormField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              //border: OutlineInputBorder(),
                              ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text("Tax"),
                        SizedBox(
                          height: 5,
                        ),
                        TextFormField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              // border: OutlineInputBorder(),
                              ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text("Total Amount:"),
                        SizedBox(
                          height: 5,
                        ),
                        TextFormField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              //border: OutlineInputBorder(),
                              hintText: "0.00"),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text("Status"),
                        SizedBox(
                          height: 5,
                        ),
                        DropdownButtonFormField<String>(
                          decoration: InputDecoration(),
                          hint: const Text("-- Select --"),
                          value: selectStatus,
                          onChanged: (String? newValue) {
                            setState(() {
                              selectStatus = newValue!;
                            });
                          },
                          items: <String>[
                            "Active",
                            "Disactive",
                          ].map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        ),
                        SizedBox(
                          height: 15,
                        )
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
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    BusinessInvoiceSummary()));
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
