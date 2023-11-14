
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zoleni/view/product/product_information.dart';


 

import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zoleni/view/product/product_information.dart';

import '../../../exports/get_export.dart';
import '../../exports/globle_exports.dart';
import '../widgets/appbar.dart';

class APIConnectionPage extends StatefulWidget {
  const APIConnectionPage({super.key});

  @override
  State<APIConnectionPage> createState() => _APIConnectionPageState();
}

class _APIConnectionPageState extends State<APIConnectionPage> {
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
                        TextFormField(
                          decoration: InputDecoration(
                              labelText: "Add Your Page", hintText: "Page Name"),
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
                SizedBox(
                  height: 10,
                ),
                Card(
                  elevation: 2,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Website: zolenimoving.com"),
                            Icon(Icons.delete),
                          ],
                        ),
                        Row(
                          children: [
                            Text("API Key: ", style: TextStyle(fontWeight: FontWeight.bold),),
                            Text("23489d08f7e20881296c95bbbf8a03da"),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text("API Sample Link: ", style: TextStyle(fontWeight: FontWeight.bold),),
                            Text("http://www.zoleni.com/api_submit\n"
                              "order&pickupAddress=xxx&dropoff\nAddress=xxx&"
                              "package=xxx&delivery\nType=xxx&scDate=xxx&scTime="
                             " xxx\n&apiKey=23489d08f7e20881296c\n95bbbf8a03da",
                              textAlign: TextAlign.justify,),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Card(
                  elevation: 2,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Website: zoleni.com"),
                            Icon(Icons.delete),
                          ],
                        ),
                        Row(
                          children: [
                            Text("API Key: ", style: TextStyle(fontWeight: FontWeight.bold),),
                            Text("23489d08f7e20881296c95bbbf8a03da"),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text("API Sample Link: ", style: TextStyle(fontWeight: FontWeight.bold),),
                            Text("http://www.zoleni.com/api_submit\n"
                                "order&pickupAddress=xxx&dropoff\nAddress=xxx&"
                                "package=xxx&delivery\nType=xxx&scDate=xxx&scTime="
                                " xxx\n&apiKey=23489d08f7e20881296c\n95bbbf8a03da",
                              textAlign: TextAlign.justify,),
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
}
