


import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zoleni/view/widgets/appbar.dart';


import '../../constant/appcolors.dart';
import '../../exports/globle_exports.dart';
import '../widgets/datetextformfield.dart';

class RewardsPoints extends StatefulWidget {
  const RewardsPoints({super.key});

  @override
  State<RewardsPoints> createState() => _RewardsPointsState();
}

class _RewardsPointsState extends State<RewardsPoints> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(60.0),
          child: MyAppBar(
            title: 'Rewards Points ',
          )),
      body: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Reward Points",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
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
                        Container(child: DatePickerFormField()),
                        SizedBox(
                          height: 10,
                        ),
                        Container(child: DatePickerFormField()),
                        SizedBox(
                          height: 10,
                        ),
                        Center(
                          child: ElevatedButton.icon(
                            onPressed: () {},
                            icon: Icon(
                              Icons.search,
                              size: 24.0,
                            ),
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.deepOrange),
                            label: Text('Search'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Balance: 938 points",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
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
                SizedBox(
                  height: 15,
                ),
                Center(
                  child: Container(
                    height: 6.0.h,
                    width: 35.0.w,
                    child: ElevatedButton(
                      onPressed: () {
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => TransactionHistory()));
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
