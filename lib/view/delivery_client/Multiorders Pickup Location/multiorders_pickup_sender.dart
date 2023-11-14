

import 'package:zoleni/view/delivery_client/Multiorders%20Pickup%20Location/multiorders_pickup_receiver.dart';


import 'package:responsive_sizer/responsive_sizer.dart';





import '../../../exports/globle_exports.dart';
import '../../../exports/get_export.dart';
import '../../widgets/appbar.dart';
import '../../widgets/datetextformfield.dart';import '../../widgets/appbar.dart';




class MultiordersSamePickupSender extends StatefulWidget {
  const MultiordersSamePickupSender({super.key});

  @override
  State<MultiordersSamePickupSender> createState() => _MultiordersSamePickupSenderState();
}

class _MultiordersSamePickupSenderState extends State<MultiordersSamePickupSender> {
  String? selectDropTime;
  String? selectAddress;
  String? selectTower;
  String? selectPickupForm;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
     /* appBar: PreferredSize(
          preferredSize: Size.fromHeight(60.0),
          child: MyAppBar(
            title: 'Multiorders Pickup',
          )),*/
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text(
                  "Mutliorder Same Pickup Location Delivery Order-Sender Details",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Card(
                  elevation: 2,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Select Pickup Date'),
                        DatePickerFormField(),
                        DropdownButtonFormField<String>(
                          decoration: InputDecoration(
                            labelText:
                            "Time",
                          ),
                          hint: const Text("-- Dropoff Time --"),
                          value: selectDropTime,
                          onChanged: (String? newValue) {
                            setState(() {
                              selectDropTime = newValue!;
                            });
                          },
                          items: <String>[
                            "12:00",
                            "01:00",
                            "02:00",
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
               SizedBox(height: 10,),
                Card(
                  elevation: 2,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        TextFormField(
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                              labelText: 'Name',
                              hintText: 'Ranjan S.'
                          ),
                        ),
                        SizedBox(height: 10,),
                        DropdownButtonFormField<String>(
                          decoration: InputDecoration(
                            labelText: 'Select address from your address book',
                          ),
                          hint: const Text('-- Select --'),
                          value: selectAddress,
                          onChanged: (String? newValue) {
                            setState(() {
                              selectAddress = newValue!;
                            });
                          },
                          items: <String>[
                            'Berry Street Lobby, Torronto',
                            'Berry Street Lobby, Torronto',
                          ].map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        ),

                        SizedBox(height: 10,),
                        TextFormField(
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                              labelText: 'Phone Number',
                              hintText: '+1 98543123456'
                          ),
                        ),SizedBox(height: 10,),
                        DropdownButtonFormField<String>(
                          decoration: InputDecoration(
                            labelText: 'Is it tower building?',
                          ),
                          hint: const Text('-- Select --'),
                          value: selectTower,
                          onChanged: (String? newValue) {
                            setState(() {
                              selectTower = newValue!;
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
                        Visibility(
                          visible: selectTower == "Yes",
                          child: DropdownButtonFormField<String>(
                            decoration: InputDecoration(
                              labelText: 'Select Pickup Form',
                            ),
                            hint: const Text('-- Select --'),
                            value: selectPickupForm,
                            onChanged: (String? newValue) {
                              setState(() {
                                selectPickupForm = newValue!;
                              });
                            },
                            items: <String>[
                              'Pick Up From Reception Desk',
                              'Pick Up From Unit Directly',
                            ].map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                          ),
                        ),

                        SizedBox(height: 10,),
                        TextFormField(
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            labelText: 'Type Address',
                          ),
                        ),
                        SizedBox(height: 10,),
                        TextFormField(
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            labelText: 'Suite/Unit',
                          ),
                        ), SizedBox(height: 10,),
                        TextFormField(
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            labelText: 'Address Instruction',
                          ),
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
                        Get.to(MultiordersSamePickupReceiver());
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
