

import 'package:image_picker/image_picker.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zoleni/view/product/product_information_summary.dart';

import '../../exports/globle_exports.dart';
import '../widgets/appbar.dart';

class ProductInformation extends StatefulWidget {
  const ProductInformation({super.key});

  @override
  State<ProductInformation> createState() => _ProductInformationState();
}

class _ProductInformationState extends State<ProductInformation> {
  String? selectCategory;
  String? selectSubCategory;
  String? selectType = "Product Package Size Setup";
  String? selectSubBoxSize;
  String? selectPrice;
  String? selectTaxRequired;
  final ImagePicker _picker = ImagePicker();
  XFile? _selectedImage;
  String? _imageName;
  TextEditingController _imagePathController = TextEditingController();

  Future<void> _pickImage() async {
    final pickedImage = await _picker.pickImage(source: ImageSource.gallery);

    setState(() {
      _selectedImage = pickedImage;
      if (pickedImage != null) {
        _imageName = pickedImage.name;
        _imagePathController.text = pickedImage.path;
      }
    });
  }

  @override
  void dispose() {
    _imagePathController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(60.0),
          child: MyAppBar(
            title: 'Product Information',
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
                        TextFormField(
                          decoration: InputDecoration(
                            labelText: "Name",
                            hintText: "Ranjan S.",
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        DropdownButtonFormField<String>(
                          decoration: InputDecoration(
                            labelText: 'Category*',
                          ),
                          hint: const Text('-- Select --'),
                          value: selectCategory,
                          onChanged: (String? newValue) {
                            setState(() {
                              selectCategory = newValue!;
                            });
                          },
                          items: <String>[
                            'abc',
                            'bcd',
                            'cde',
                          ].map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        DropdownButtonFormField<String>(
                          decoration: InputDecoration(
                            labelText: 'Sub Category*',
                          ),
                          hint: const Text('-- Select --'),
                          value: selectSubCategory,
                          onChanged: (String? newValue) {
                            setState(() {
                              selectSubCategory = newValue!;
                            });
                          },
                          items: <String>[
                            'abc',
                            'bcd',
                            'cde',
                          ].map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            labelText: "Details",
                            //hintText: "",
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text("Image (Resolution: 400X400)*"),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(),
                            color: Colors.white,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Row(
                              children: [
                                Row(
                                  children: [
                                    TextButton(
                                      onPressed: _pickImage,
                                      child: Text(
                                        'Browse...',
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.black,
                                        ),
                                      ),
                                      style: TextButton.styleFrom(
                                        padding: EdgeInsets.all(16),
                                        backgroundColor: Colors.grey,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Expanded(
                                  child: Visibility(
                                    visible:
                                        _selectedImage != 'No file selected',
                                    child: Text(
                                      _imageName ?? 'No file selected',
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        DropdownButtonFormField<String>(
                          decoration: InputDecoration(
                            labelText: 'Type*',
                          ),
                          //hint: const Text("Product Package Size Setup"),
                          value: selectType,
                          onChanged: (String? newValue) {
                            setState(() {
                              selectType = newValue!;
                            });
                          },
                          items: <String>[
                            "Product Package Size Setup",
                            "Product With Price",
                          ].map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        DropdownButtonFormField<String>(
                          decoration: InputDecoration(
                            labelText: 'Box Size*',
                          ),
                          hint: const Text("-- Select --"),
                          value: selectSubBoxSize,
                          onChanged: (String? newValue) {
                            setState(() {
                              selectSubBoxSize = newValue!;
                            });
                          },
                          items: <String>[
                            "1",
                            "1.5",
                            "2",
                          ].map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        DropdownButtonFormField<String>(
                          decoration: InputDecoration(
                            labelText: "Tax Required*",
                          ),
                          hint: const Text("-- Select --"),
                          value: selectTaxRequired,
                          onChanged: (String? newValue) {
                            setState(() {
                              selectTaxRequired = newValue!;
                            });
                          },
                          items: <String>[
                            "1",
                            "1.5",
                            "2",
                          ].map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Visibility(
                          visible: selectType == "Product With Price",
                          child: DropdownButtonFormField<String>(
                            decoration: InputDecoration(
                              labelText: "Price*",
                            ),
                            hint: const Text("-- Select --"),
                            value: selectPrice,
                            onChanged: (String? newValue) {
                              setState(() {
                                selectPrice = newValue!;
                              });
                            },
                            items: <String>[
                              "1",
                              "1.5",
                              "2",
                            ].map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Visibility(
                          visible: selectType == "Product With Price",
                          child: TextFormField(
                            decoration: InputDecoration(
                              labelText: "Quantity*",
                              //hintText: "",
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey),
                              ),
                            ),
                          ),
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
                                builder: (context) =>
                                    ProductInformationSummary()));
                      },
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
