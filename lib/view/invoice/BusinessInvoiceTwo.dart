


import 'package:flutter/services.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zoleni/view/product/product_information.dart';


 

import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zoleni/view/product/product_information.dart';

import '../../exports/globle_exports.dart';
import '../../../exports/get_export.dart';
import '../widgets/appbar.dart';
import 'BusinessInvoiceThree.dart';


class BusinessInvoiceTwo extends StatefulWidget {
  const BusinessInvoiceTwo({super.key});

  @override
  State<BusinessInvoiceTwo> createState() => _BusinessInvoiceTwoState();
}

class _BusinessInvoiceTwoState extends State<BusinessInvoiceTwo> {
  TextEditingController _quantity = TextEditingController();
  TextEditingController _price = TextEditingController();
  TextEditingController _textRate = TextEditingController();
  int _currentQuantityValue = 0;
  int _currentPriceValue = 0;
  int _currentTextRateValue = 0;
  String? selectTextName;
  String? dropdownPercentageValue;

  void _incrementQuantityValue() {
    setState(() {
      _currentQuantityValue++;
      _quantity.text = _currentQuantityValue.toString();
    });
  }

  void _decrementQuantityValue() {
    setState(() {
      if (_currentQuantityValue > 0) {
        _currentQuantityValue--;
        _quantity.text = _currentQuantityValue.toString();
      }
    });
  }

  void _incrementPriceValue() {
    setState(() {
      _currentPriceValue++;
      _price.text = _currentPriceValue.toString();
    });
  }

  void _decrementPriceValue() {
    setState(() {
      if (_currentPriceValue > 0) {
        _currentPriceValue--;
        _price.text = _currentPriceValue.toString();
      }
    });
  }

  void _incrementTextRateValue() {
    setState(() {
      _currentTextRateValue++;
      _textRate.text = _currentTextRateValue.toString();
    });
  }

  void _decrementTextRateValue() {
    setState(() {
      if (_currentTextRateValue > 0) {
        _currentTextRateValue--;
        _textRate.text = _currentTextRateValue.toString();
      }
    });
  }

  @override
  void dispose() {
    _quantity.dispose();
    _price.dispose();
    _textRate.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(60.0),
          child: MyAppBar(
            title: 'Invoice',
          )),
      body: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Items",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Card(
                  elevation: 3,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextFormField(
                          decoration: InputDecoration(
                            labelText: "Item Name",
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Expanded(
                              child: TextFormField(
                                controller: _quantity,
                                keyboardType: TextInputType.numberWithOptions(
                                  decimal: false,
                                  signed: false,
                                ),
                                inputFormatters: <TextInputFormatter>[
                                  FilteringTextInputFormatter.digitsOnly
                                ],
                                decoration: InputDecoration(
                                    contentPadding:
                                        EdgeInsets.symmetric(vertical: 4),
                                    labelText: "Quantity*"),
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                MaterialButton(
                                  minWidth: 5.0,
                                  child: Icon(Icons.arrow_drop_up),
                                  onPressed: _incrementQuantityValue,
                                ),
                                MaterialButton(
                                  minWidth: 5.0,
                                  child: Icon(Icons.arrow_drop_down),
                                  onPressed: _decrementQuantityValue,
                                ),
                              ],
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Expanded(
                              child: TextFormField(
                                controller: _price,
                                keyboardType: TextInputType.numberWithOptions(
                                  decimal: false,
                                  signed: false,
                                ),
                                inputFormatters: <TextInputFormatter>[
                                  FilteringTextInputFormatter.digitsOnly
                                ],
                                decoration: InputDecoration(
                                    contentPadding:
                                        EdgeInsets.symmetric(vertical: 4),
                                    labelText: "Price"),
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                MaterialButton(
                                  minWidth: 5.0,
                                  child: Icon(Icons.arrow_drop_up),
                                  onPressed: _incrementPriceValue,
                                ),
                                MaterialButton(
                                  minWidth: 5.0,
                                  child: Icon(Icons.arrow_drop_down),
                                  onPressed: _decrementPriceValue,
                                ),
                              ],
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Expanded(
                              child: TextFormField(
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                  labelText: 'Discount',
                                  //border: OutlineInputBorder(),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: DropdownButtonFormField<String>(
                                decoration: InputDecoration(
                                    //labelText: "Percentage",
                                    ),
                                hint: const Text("Percentage"),
                                value: dropdownPercentageValue,
                                onChanged: (String? newValue) {
                                  setState(() {
                                    dropdownPercentageValue = newValue!;
                                  });
                                },
                                items: <String>[
                                  "10",
                                  "20",
                                  "30",
                                ].map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                              ),
                            ),
                          ],
                        ),
                        DropdownButtonFormField<String>(
                          decoration: InputDecoration(
                            labelText: "Text Name*",
                          ),
                          hint: const Text("-- Select --"),
                          value: selectTextName,
                          onChanged: (String? newValue) {
                            setState(() {
                              selectTextName = newValue!;
                            });
                          },
                          items: <String>[
                            "\$",
                            "@",
                            "%",
                          ].map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Expanded(
                              child: TextFormField(
                                controller: _textRate,
                                keyboardType: TextInputType.numberWithOptions(
                                  decimal: false,
                                  signed: false,
                                ),
                                inputFormatters: <TextInputFormatter>[
                                  FilteringTextInputFormatter.digitsOnly
                                ],
                                decoration: InputDecoration(
                                    contentPadding:
                                        EdgeInsets.symmetric(vertical: 4),
                                    labelText: "Tax Rate (%)"),
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                MaterialButton(
                                  minWidth: 5.0,
                                  child: Icon(Icons.arrow_drop_up),
                                  onPressed: _incrementTextRateValue,
                                ),
                                MaterialButton(
                                  minWidth: 5.0,
                                  child: Icon(Icons.arrow_drop_down),
                                  onPressed: _decrementTextRateValue,
                                ),
                              ],
                            ),
                          ],
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            labelText: "Date",
                            suffixIcon: Icon(Icons.calendar_month),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),
                            ),
                          ),
                        ),
                        TextFormField(
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            labelText: "Description *",
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),
                            ),
                          ),
                        ),
                        TextFormField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            labelText: "Total Amount *",
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),
                            ),
                          ),
                        ),
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              "Remove",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.deepOrange),
                            )),
                        ElevatedButton.icon(
                          onPressed: () {},
                          icon: Icon(
                            Icons.add_circle_outline,
                            size: 24.0,
                          ),
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.deepOrange),
                          label: Text('Add Item'),
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
                Center(
                  child: Container(
                    height: 6.0.h,
                    width: 35.0.w,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => BusinessInvoiceThree()));
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
