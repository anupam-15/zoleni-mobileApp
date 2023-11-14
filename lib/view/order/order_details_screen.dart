

import 'package:flutter/services.dart';
import 'package:zoleni/view/widgets/appbar.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';

import '../../exports/globle_exports.dart';

class OrderDetails extends StatefulWidget {
  final dynamic orderDetails;
  const OrderDetails({super.key, required this.orderDetails});


  @override
  State<OrderDetails> createState() => _OrderDetailsState();
}

class _OrderDetailsState extends State<OrderDetails> {
  // bool isNewOrderActive = false;
  // bool isSplitOrderActive = false;
  bool showFields = false;

  /*void toggleNewOrder() {
    setState(() {
      isNewOrderActive = true;
      isSplitOrderActive = false;
    });
  }

  void toggleSplitOrder() {
    setState(() {
      isSplitOrderActive = true;
      isNewOrderActive = false;
    });
  }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#ECF0F3"),
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(60.0),
          child: MyAppBar(
            title: 'Order Details',
          )),
      body: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Card(
                  elevation: 2,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Visibility(
                              visible: widget.orderDetails['order_id'] == null ? false : true,
                              child: Row(
                                children: [
                                  Text(
                                    'Order i\'d :',
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "${widget.orderDetails['order_id']}",
                                    style: TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                            Visibility(
                              visible: widget.orderDetails['type'] == null ? false : true,
                              child: Row(
                                children: [
                                  Text(
                                    "Type: ",
                                    style: TextStyle(
                                      fontSize: 14,
                                    ),
                                  ),
                                  Text(
                                    "${widget.orderDetails['type']}",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.deepOrange),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 5,),
                        Visibility(
                          visible: widget.orderDetails['user_name'] == null ? false : true,
                          child: Row(
                            children: [
                              Text(
                                "Name: ",
                                style: TextStyle(
                                  fontSize: 14,
                                ),
                              ),
                              Text(
                                "${widget.orderDetails['user_name']}",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox( height: 10,),
                        Visibility(
                          visible: widget.orderDetails['user_email'] == null ? false : true,
                          child: Row(
                            children: [
                              Text(
                                "Email: ",
                                style: TextStyle(
                                  fontSize: 14,
                                ),
                              ),
                              Text(
                                "${widget.orderDetails['user_email']}",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 10,),
                        Visibility(
                          visible: widget.orderDetails['order_date'] == null ? false : true,
                          child: Row(
                            children: [
                              Text(
                                'Order Date:',
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "${widget.orderDetails['order_date']}",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        SizedBox( height: 10,),
                        Visibility(
                          visible: widget.orderDetails['status_date'] == null ? false : true,
                          child: Row(
                            children: [
                              Text(
                                'Status Date:',
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "${widget.orderDetails['status_date']}",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        SizedBox( height: 10,),
                        Visibility(
                          visible: widget.orderDetails['pickup_date'] == null ? false : true,
                          child: Row(
                            children: [
                              Text(
                                'Pickup Date:',
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "${widget.orderDetails['pickup_date']}",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        SizedBox( height: 10,),
                        Visibility(
                          visible: widget.orderDetails['dropoff_date'] == null ? false : true,
                          child: Row(
                            children: [
                              Text(
                                'Drop Date:',
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "${widget.orderDetails['dropoff_date']}",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        SizedBox( height: 10,),
                        Visibility(
                          visible: widget.orderDetails['day'] == null ? false : true,
                          child: Row(
                            children: [
                              Text(
                                'Day:',
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "${widget.orderDetails['day']}",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        SizedBox( height: 10,),
                        Visibility(
                          visible: widget.orderDetails['status'] == null ? false : true,
                          child: Row(
                            children: [
                              Text(
                                "Status: ",
                                style: TextStyle(
                                  fontSize: 14,
                                ),
                              ),
                              Text(
                                getStatusText(widget.orderDetails['status']),
                                // "${widget.orderDetails['status']}",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.deepOrange),
                              ),
                            ],
                          ),
                        ),
                        Divider(
                          thickness: 1,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Center(
                          child: Visibility(
                            visible:  getStatusText(widget.orderDetails['status']) == "Completed" ? false : true,
                            child: ElevatedButton.icon(
                              onPressed: () {},
                              icon: Icon(Icons.location_on_outlined),
                              label: Text("Live Tracking"),
                              style: ElevatedButton.styleFrom(backgroundColor: Colors.deepOrange),
                            ),
                          ),
                        ),
                        SizedBox( height: 5,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Visibility(
                              visible:  getStatusText(widget.orderDetails['status']) == "Processing" ? false : true,
                              child: ElevatedButton.icon(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.refresh_outlined,
                                  size: 14,
                                ),
                                label: Text(
                                  "Re-Order",
                                  style: TextStyle(fontSize: 12),
                                ),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.deepOrange,
                                ),
                              ),
                            ),
                            Visibility(
                              visible:  getStatusText(widget.orderDetails['status']) == "Processing" ? false : true,
                              child: ElevatedButton.icon(
                                onPressed: () {},
                                icon: Icon(Icons.reviews_outlined, size: 14),
                                label: Text(
                                  "Rate/Review",
                                  style: TextStyle(fontSize: 12),
                                ),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.deepOrange,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ElevatedButton.icon(
                              onPressed: () async {
                                final pdf = await generatePDF();
                                await Printing.layoutPdf(
                                  onLayout: (PdfPageFormat format) async => pdf,
                                );
                              },
                              icon: Icon(Icons.print),
                              label: Text("Print"),
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.deepOrange),
                            ),
                            Visibility(
                              visible:  getStatusText(widget.orderDetails['status']) == "Completed" ? false : true,
                              child: ElevatedButton.icon(
                                onPressed: () {},
                                icon: Icon(Icons.chat),
                                label: Text("Chat"),
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.deepOrange),
                              ),
                            ),

                          ],
                        ),

                        SizedBox( height: 5,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Visibility(
                              visible:  getStatusText(widget.orderDetails['status']) == "Completed" ? false : true,
                              child: ElevatedButton.icon(
                                onPressed: () {},
                                icon: Icon(Icons.note),
                                label: Text("Note"),
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.deepOrange),
                              ),
                            ),
                            Visibility(
                              visible:  getStatusText(widget.orderDetails['status']) == "Completed" ? false : true,
                              child: ElevatedButton.icon(
                                onPressed: () {},
                                icon: Icon(Icons.cancel_presentation_rounded,
                                    size: 14),
                                label: Text(
                                  "Cancel Order",
                                  style: TextStyle(fontSize: 12),
                                ),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.deepOrange,
                                ),
                              ),
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
      ),
    );
  }

  String getStatusText(String status) {
    if (status == "0") {
      return "Processing";
    } else if (status == "1") {
      return "Completed";
    } else {
      return ""; // Handle other cases as needed
    }
  }

  Future<Uint8List> generatePDF() async {
    final pdf = pw.Document();
    pdf.addPage(
      pw.Page(
        build: (pw.Context context) {
          return pw.Center(
            child: pw.Text("Hello, this is your PDF content."),
          );
        },
      ),
    );
    return pdf.save();
  }

}