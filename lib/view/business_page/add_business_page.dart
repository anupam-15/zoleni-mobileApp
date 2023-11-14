
import 'dart:io';

import 'package:full_screen_image/full_screen_image.dart';
import 'package:image_picker/image_picker.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zoleni/view/product/product_information.dart';


 

import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zoleni/view/product/product_information.dart';

import '../../exports/globle_exports.dart';
import '../../../exports/get_export.dart';
import '../widgets/appbar.dart';

class AddBusinessPage extends StatefulWidget {
  const AddBusinessPage({super.key});

  @override
  State<AddBusinessPage> createState() => _AddBusinessPageState();
}

class _AddBusinessPageState extends State<AddBusinessPage> {
  bool isAddBusiness = false;
  bool ListBusiness = false;
  String _selectedStatus = "Blocked";

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
            title: 'Business Tool',
          )),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 2,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 6.0.h,
                width: 48.0.w,
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      isAddBusiness = false;
                    });
                  },
                  child: Text(
                    "Add Business",
                    style: TextStyle(
                      color: isAddBusiness ? Colors.deepOrange : Colors.white,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: isAddBusiness ? Colors.white : Colors.deepOrange,
                  ),
                ),
              ),
              SizedBox(
                width: 8,
              ),
              Container(
                height: 6.0.h,
                width: 48.0.w,
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      isAddBusiness = true;
                    });
                  },
                  child: Text(
                    "List Business",
                    style: TextStyle(
                      color: isAddBusiness ? Colors.white : Colors.deepOrange,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: isAddBusiness ? Colors.deepOrange : Colors.white,
                  ),
                ),
              ),
            ],
          ),
          isAddBusiness
              ? Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Add your business page",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      Card(
                        elevation: 3,
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
                                        "Abc",
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
                                    "URL: ",
                                    style: TextStyle(
                                      fontSize: 14,
                                    ),
                                  ),
                                  Text(
                                    "http://www.zoleni.com/123",
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
                                    "Post Date: ",
                                    style: TextStyle(
                                      fontSize: 14,
                                    ),
                                  ),
                                  Text(
                                    "04/24/2020 ",
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
                                    "Active: ",
                                    style: TextStyle(
                                      fontSize: 14,
                                    ),
                                  ),
                                  DropdownButton<String>(
                                    value: _selectedStatus,
                                    items: ["Blocked", "Active"].map((String status) {
                                      return DropdownMenuItem<String>(
                                        value: status,
                                        child: Text(
                                          status,
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      );
                                    }).toList(),
                                    onChanged: (String? newValue) {
                                      setState(() {
                                        _selectedStatus = newValue!;
                                      });
                                    },
                                  ),
                                ],
                              ),
                              Divider(
                                thickness: 1,
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Image: ",
                                    style: TextStyle(
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ),
                              Divider(
                                thickness: 1,
                              ),
                              Row(
                                children: [
                                  Image.asset("assets/images/magmage.png")
                                ],
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                )
              : Expanded(
                  child: Container(
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 2,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Add your business page",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                                Card(
                                  elevation: 3,
                                  color: Colors.white,
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        TextFormField(
                                          decoration: InputDecoration(
                                            labelText: "Business Name*",
                                            hintText: "Abc",
                                            enabledBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.grey),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text("Image (Resolution: 400x400)"),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Container(
                                          width: 400,
                                          height: 100,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Colors.grey,
                                              width: 1.5,
                                            ),
                                          ),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: <Widget>[
                                              Expanded(
                                                child: Padding(
                                                  padding: const EdgeInsets.all(
                                                      10.0),
                                                  child: FullScreenWidget(
                                                    disposeLevel:
                                                        DisposeLevel.Medium,
                                                    child: Container(
                                                      width:
                                                          MediaQuery.of(context)
                                                              .size
                                                              .width,
                                                      height: 160,
                                                      child: Center(
                                                        child: _selectedImage ==
                                                                null
                                                            ? IconButton(
                                                                onPressed: () {
                                                                  _pickImage();
                                                                },
                                                                icon: Icon(
                                                                  Icons
                                                                      .camera_alt,
                                                                  size: 50,
                                                                  color: Colors
                                                                      .grey,
                                                                ),
                                                              )
                                                            : Image.file(
                                                                File(
                                                                    _selectedImage!.path),
                                                                fit: BoxFit.cover,
                                                              ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Container(
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Expanded(
                                                child: Visibility(
                                                  visible: _selectedImage != null,
                                                  child: Text(
                                                    _imageName ?? 'No file selected',
                                                    style: TextStyle(
                                                      fontSize: 16,
                                                      color: Colors.deepOrange,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Row(
                                                children: [
                                                  Text("5.0 MB", style: TextStyle(color: Colors.grey),)
                                                ],
                                              )
                                            ],
                                          ),
                                          
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        TextFormField(
                                          decoration: InputDecoration(
                                            labelText: "Business Website*",
                                            hintText: "Abc",
                                            enabledBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.grey),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        TextFormField(
                                          decoration: InputDecoration(
                                            labelText: "Business Page Name*",
                                            hintText: "Abc",
                                            enabledBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.grey),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          "Business Page URL: http://www.zolenimoving.com/",
                                        ),
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
                                              labelText: "Description*"),
                                        ),
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
                                              labelText:
                                                  "Select products for this page*"),
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
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
                  // Navigator.push(context,
                  //     MaterialPageRoute(builder: (context) => BusinessHours()));
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
          SizedBox(
            height: 40,
          )
        ],
      ),
    );
  }
}
