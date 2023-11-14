import 'package:zoleni/view/delivery_client/Ongoing/daily_delivery_sender.dart';


import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../exports/globle_exports.dart';
import '../../../exports/get_export.dart';
import '../../widgets/datetextformfield.dart';


class OngoingPage extends StatefulWidget {
  const OngoingPage({super.key});

  @override
  State<OngoingPage> createState() => _OngoingPageState();
}

class _OngoingPageState extends State<OngoingPage> {
  // TextEditingController _startingDate = TextEditingController();
  // TextEditingController _endDate = TextEditingController();
  // DateTime? _selectedDate;
  String? selectDay;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
     /* appBar: PreferredSize(
          preferredSize: Size.fromHeight(60.0),
          child: MyAppBar(
            title: 'Ongoing',
          )),*/
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Card(
                  elevation: 2,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Starting Date'),
                        SizedBox(
                          height: 5,
                        ),
                        DatePickerFormField(),
                        SizedBox(
                          height: 10,
                        ),
                        Text('End Date (Optional)'),
                        SizedBox(
                          height: 5,
                        ),
                        DatePickerFormField(),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Exception',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text('Date'),
                        SizedBox(
                          height: 5,
                        ),
                        DatePickerFormField(),
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              "Remove",
                              style: TextStyle(color: Colors.deepOrange),
                            )),
                        ElevatedButton.icon(
                          onPressed: () {},
                          icon: Icon(
                            Icons.add,
                            size: 24.0,
                          ),
                          label: Text('Add More'),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.deepOrange,
                          ),
                        ),
                        DropdownButtonFormField<String>(
                          decoration: InputDecoration(
                            labelText: "Select Pickup Form",
                          ),
                          hint: const Text("-- Select --"),
                          value: selectDay,
                          onChanged: (String? newValue) {
                            setState(() {
                              selectDay = newValue!;
                            });
                          },
                          items: <String>[
                            "Pickup from unit directly",
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
                        Get.to(DailyDeliverySender());
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

/*Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate ?? DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
        _startingDate.text = "${_selectedDate!.toLocal()}".split(' ')[0];
        _endDate.text = "${_selectedDate!.toLocal()}".split(' ')[0];
      });
    }
  }*/
}
