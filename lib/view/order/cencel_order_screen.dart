
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zoleni/view/widgets/appbar.dart';

import '../../exports/globle_exports.dart';
import 'order_details_screen.dart';

class CencelOrderScreen extends StatefulWidget {

  const CencelOrderScreen({super.key});

  @override
  State<CencelOrderScreen> createState() => _CencelOrderScreenState();
}

class _CencelOrderScreenState extends State<CencelOrderScreen> {
  String? dropdownValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#ECF0F3"),
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(60.0),
          child: MyAppBar(
            title: 'Cencel Order',
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
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Cancel delivery order #77893130"),
                        Divider(
                          thickness: 1,
                          color: Colors.black,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text("Choose Reason To Cancel"),
                        SizedBox(
                          height: 10,
                        ),
                        DropdownButtonFormField<String>(
                          hint: const Text(
                            '--Select--',
                            style: TextStyle(fontSize: 20),
                          ),
                          value: dropdownValue,
                          onChanged: (String? newValue) {
                            setState(() {
                              dropdownValue = newValue!;
                            });
                          },
                          items: <String>[
                            'Apple',
                            'Mango',
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
                        Text("Note"),
                        SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          minLines: 3,
                          maxLines: null,
                          keyboardType: TextInputType.multiline,
                          decoration: InputDecoration(
                            alignLabelWithHint: true,
                            border: OutlineInputBorder(),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  height: 6.0.h,
                  width: 35.0.w,
                  child: ElevatedButton(
                    onPressed: () {
                     /* Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => OrderDetails()));*/
                    },
                    child: Text(
                      "Cencel",
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
