


import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zoleni/view/product/product_information.dart';


 

import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zoleni/view/product/product_information.dart';

import '../../exports/globle_exports.dart';
import '../../../exports/get_export.dart';
import '../widgets/appbar.dart';
class MyClient extends StatefulWidget {
  const MyClient({super.key});

  @override
  State<MyClient> createState() => _MyClientState();
}

class _MyClientState extends State<MyClient> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(60.0),
          child: MyAppBar(
            title: 'API ConnectionPage',
          )),
      body: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Card(
                  elevation: 2,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text("Client Name: ", style: TextStyle(fontWeight: FontWeight.bold),),
                            Text("Md Asif"),
                          ],
                        ),
                        Row(
                          children: [
                            Text("Type: ", style: TextStyle(fontWeight: FontWeight.bold),),
                            Text("Concierge"),
                          ],
                        ),
                        Row(
                          children: [
                            Text("Join Date: ", style: TextStyle(fontWeight: FontWeight.bold),),
                            Text("2023-08-18 07:05:21"),
                          ],
                        ),
                        Row(
                          children: [
                            Text("Referral Source:  ", style: TextStyle(fontWeight: FontWeight.bold),),
                            Text("X2DJKOSIS56"),
                          ],
                        ),
                      ],
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
