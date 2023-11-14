

import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zoleni/view/product/product_information.dart';


 

import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zoleni/view/product/product_information.dart';

import '../../exports/globle_exports.dart';
import '../../../exports/get_export.dart';
import '../widgets/appbar.dart';
import '../widgets/datetextformfield.dart';

class ClaimMoney extends StatefulWidget {
  const ClaimMoney({super.key});

  @override
  State<ClaimMoney> createState() => _ClaimMoneyState();
}

class _ClaimMoneyState extends State<ClaimMoney> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(60.0),
          child: MyAppBar(
            title: 'Claim Money',
          )),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Card(
                elevation: 2,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      TextFormField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            labelText: "Enter  amount to claim*",
                        ),
                      ),
                      SizedBox(height: 10,),
                      Center(
                        child: Container(
                          height: 6.0.h,
                          width: 35.0.w,
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              "Submit",
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
              SizedBox(height: 10,),
              Card(
                elevation: 3,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Container(child: DatePickerFormField()),
                      SizedBox(
                        height: 10,
                      ),
                      Container(child: DatePickerFormField()),
                      SizedBox(
                        height: 10,
                      ),
                      Center(
                        child: Container(
                          height: 6.0.h,
                          width: 35.0.w,
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              "Search",
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
              SizedBox(
                height: 10,
              ),
              Card(
                elevation: 3,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Table(
                        border: TableBorder.all(),
                        columnWidths: {
                          3: FixedColumnWidth(150.0),
                        },
                        children: [
                          TableRow(
                            children: [
                              TableCell(
                                child: Center(
                                  child: Text(
                                    'Date',
                                    style:
                                    TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              TableCell(
                                child: Center(
                                  child: Text(
                                    'Point',
                                    style:
                                    TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              TableCell(
                                child: Center(
                                  child: Text(
                                    'Order Id',
                                    style:
                                    TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          TableRow(
                            children: [
                              TableCell(
                                child: Center(
                                  child: Text('Sep 07, 2023'),
                                ),
                              ),
                              TableCell(
                                child: Center(
                                  child: Text('171'),
                                ),
                              ),
                              TableCell(
                                child: Center(
                                  child: Text('26605800'),
                                ),
                              ),
                            ],
                          ),
                          
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
