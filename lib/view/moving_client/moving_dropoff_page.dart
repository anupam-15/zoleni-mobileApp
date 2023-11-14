


import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zoleni/view/product/product_information.dart';


 

import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zoleni/view/product/product_information.dart';

import '../../exports/globle_exports.dart';
import '../../../exports/get_export.dart';
import '../widgets/appbar.dart';
import 'moving_insurance_page.dart';


class MovingDropOffPage extends StatefulWidget {
  const MovingDropOffPage({super.key});

  @override
  State<MovingDropOffPage> createState() => _MovingDropOffPageState();
}

class _MovingDropOffPageState extends State<MovingDropOffPage> {
  String? selectBuilding;
  String? selectDropoff;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(60.0),
          child: MyAppBar(
            title: 'Moving Form',
          )),
      body: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Dropoff Location Details",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Card(
                  elevation: 2,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        TextFormField(
                          decoration: InputDecoration(
                            labelText: "Type Address",
                            hintText: "Berry Street Lobby, Torronto",
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),
                            ),
                          ),
                        ),
                        SizedBox(height: 10,),
                        TextFormField(
                          decoration: InputDecoration(
                            labelText: "Name",
                            hintText: "Ranjan S.",
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),
                            ),
                          ),
                        ),
                        SizedBox(height: 10,),
                        TextFormField(
                          decoration: InputDecoration(
                            labelText: "Contact Number",
                            hintText: "+1 98543123456",
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),
                            ),
                          ),
                        ),
                        SizedBox(height: 10,),
                        TextFormField(
                          decoration: InputDecoration(
                            labelText: "State / Unit",
                            hintText: "N/A",
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),
                            ),
                          ),
                        ),
                        SizedBox(height: 10,),
                        TextFormField(
                          decoration: InputDecoration(
                            labelText: "Address Instruction",
                            hintText: "Berry Street Lobby, Torronto",
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),
                            ),
                          ),
                        ),
                        SizedBox(height: 10,),
                        DropdownButtonFormField<String>(
                          decoration: InputDecoration(
                            labelText: 'It is tower building?',
                          ),
                          hint: const Text('-- Select --'),
                          value: selectBuilding,
                          onChanged: (String? newValue) {
                            setState(() {
                              selectBuilding = newValue!;
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
                            labelText: 'Select Pickup Form',
                          ),
                          hint: const Text('-- Select --'),
                          value: selectDropoff,
                          onChanged: (String? newValue) {
                            setState(() {
                              selectDropoff = newValue!;
                            });
                          },
                          items: <String>[
                            'Drop Off unit directly',

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
                            labelText: 'If no one to receive in drop-off location',
                          ),
                          hint: const Text('-- Select --'),
                          value: selectDropoff,
                          onChanged: (String? newValue) {
                            setState(() {
                              selectDropoff = newValue!;
                            });
                          },
                          items: <String>[
                            'Return',
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
                SizedBox(
                  height: 15,
                ),
                Center(
                  child: Container(
                    height: 6.0.h,
                    width: 35.0.w,
                    child: ElevatedButton(
                      onPressed: () {
                        Get.to(MovingInsurance());
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
