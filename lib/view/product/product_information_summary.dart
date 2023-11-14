

import 'package:responsive_sizer/responsive_sizer.dart';

import '../../exports/globle_exports.dart';
import '../widgets/appbar.dart';

class ProductInformationSummary extends StatefulWidget {
  const ProductInformationSummary({super.key});

  @override
  State<ProductInformationSummary> createState() =>
      _ProductInformationSummaryState();
}

class _ProductInformationSummaryState extends State<ProductInformationSummary> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(60.0),
          child: MyAppBar(
            title: "Product Information Summary",
            //style: TextStyle(fontSize: 20.0),
          )),
      body: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: [
                Card(
                  elevation: 3,
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
                                  "Name: ",
                                  style: TextStyle(
                                    fontSize: 14,
                                  ),
                                ),
                                Text(
                                  "Ranjan S.",
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
                        Divider(
                          thickness: 1,
                        ),
                        Row(
                          children: [
                            Text(
                              "Category: ",
                              style: TextStyle(
                                fontSize: 14,
                              ),
                            ),
                            Text(
                              "Electronics",
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
                          children: [
                            Text(
                              "Sub Category: ",
                              style: TextStyle(
                                fontSize: 14,
                              ),
                            ),
                            Text(
                              "Mobile",
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
                          children: [
                            Text(
                              "Details: ",
                              style: TextStyle(
                                fontSize: 14,
                              ),
                            ),
                            Text(
                              "Mobile",
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
                          children: [
                            Text(
                              "Type: ",
                              style: TextStyle(
                                fontSize: 14,
                              ),
                            ),
                            Text(
                              "Product With Price",
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
                          children: [
                            Text(
                              "Box Size: ",
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
                        Divider(
                          thickness: 1,
                        ),
                        Row(
                          children: [
                            Text(
                              "Tax Required: ",
                              style: TextStyle(
                                fontSize: 14,
                              ),
                            ),
                            Text(
                              "Yes",
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
                          children: [
                            Text(
                              "Price: ",
                              style: TextStyle(
                                fontSize: 14,
                              ),
                            ),
                            Text(
                              "\$300",
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
                          children: [
                            Text(
                              "Quantity: ",
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
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Card(
                  elevation: 3,
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
                                  "Name: ",
                                  style: TextStyle(
                                    fontSize: 14,
                                  ),
                                ),
                                Text(
                                  "Ranjan S.",
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
                        Divider(
                          thickness: 1,
                        ),
                        Row(
                          children: [
                            Text(
                              "Category: ",
                              style: TextStyle(
                                fontSize: 14,
                              ),
                            ),
                            Text(
                              "Electronics",
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
                          children: [
                            Text(
                              "Sub Category: ",
                              style: TextStyle(
                                fontSize: 14,
                              ),
                            ),
                            Text(
                              "Mobile",
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
                          children: [
                            Text(
                              "Details: ",
                              style: TextStyle(
                                fontSize: 14,
                              ),
                            ),
                            Text(
                              "Mobile",
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
                          children: [
                            Text(
                              "Type: ",
                              style: TextStyle(
                                fontSize: 14,
                              ),
                            ),
                            Text(
                              "Product With Price",
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
                          children: [
                            Text(
                              "Box Size: ",
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
                        Divider(
                          thickness: 1,
                        ),
                        Row(
                          children: [
                            Text(
                              "Tax Required: ",
                              style: TextStyle(
                                fontSize: 14,
                              ),
                            ),
                            Text(
                              "Yes",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
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
      ),
    );
  }
}
