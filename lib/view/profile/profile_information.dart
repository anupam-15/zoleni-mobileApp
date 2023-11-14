import 'dart:io';

import 'package:zoleni/controller/conceirge_controller.dart';
import 'package:zoleni/controller/home_controller.dart';
import 'package:zoleni/exports/globle_exports.dart';
import 'package:full_screen_image/full_screen_image.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:zoleni/model/country_list_model.dart';
import 'package:zoleni/model/response_model.dart';
import 'package:zoleni/view/widgets/appbar.dart';

import '../../controller/profile_controller.dart';
import '../../exports/get_export.dart';
import '../../model/profile_response_model.dart';

class UpdateProfileInformation extends StatefulWidget {
  const UpdateProfileInformation({super.key});

  @override
  State<UpdateProfileInformation> createState() =>
      _UpdateProfileInformationState();
}

class _UpdateProfileInformationState extends State<UpdateProfileInformation> {

  final ProfileController profileController = Get.put(ProfileController());
  final HomeController homeController = Get.put(HomeController());
  final ConceirgeController conceirgeController = Get.put(ConceirgeController());

  @override
  void initState() {
    profileController.getProfileData();
    super.initState();
  }

  @override
  void dispose() {
    profileController.imagePathController.dispose();
    super.dispose();
  }

  void _deleteImage() {
    profileController.selectedImage = null;
    Get.forceAppUpdate();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(60.0),
          child: MyAppBar(
            title: 'Update Profile Information',
          )),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Card(
                  elevation: 2,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        TextFormField(
                          keyboardType: TextInputType.text,
                          controller: profileController.firstNameTextController,
                          decoration: InputDecoration(
                              labelText: 'First Name *', hintText: 'Tonny'),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        TextFormField(
                          keyboardType: TextInputType.text,
                          controller: profileController.lastNameTextController,
                          decoration: InputDecoration(
                              labelText: 'Last Name *', hintText: 'R.'),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        DropdownButtonFormField<String>(
                          decoration: InputDecoration(
                            labelText: 'Gender*',
                          ),
                          hint: const Text('-- Select --'),
                          value: profileController.selectGender,
                          onChanged: (String? newValue) {
                            profileController.selectGender = newValue!;
                            Get.forceAppUpdate();
                          },
                          items: <String>[
                            'Male',
                            'Female',
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
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            color: Colors.white,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Row(
                                      children: [
                                        TextButton(
                                          onPressed: profileController.pickImage,
                                          child: Text(
                                            'Browse...',
                                            style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.black,
                                            ),
                                          ),
                                          style: TextButton.styleFrom(
                                            padding: EdgeInsets.all(16),
                                            backgroundColor: HexColor("#E5E5E5"),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Expanded(
                                      child: Visibility(
                                        visible: profileController.selectedImage != null,
                                        child: Text(
                                          profileController.imageName ?? 'No file selected',
                                          style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              height: 175,
                              width: 175,
                              decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: FullScreenWidget(
                                        disposeLevel: DisposeLevel.Medium,
                                        child: Container(
                                          width: MediaQuery.of(context)
                                              .size
                                              .width,
                                          height: 160,
                                          child: Center(
                                            child: profileController.selectedImage == null
                                                ? Image.asset("assets/images/nophoto.png")
                                                : Image.file(
                                              File(
                                                  profileController.selectedImage!.path),
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
                            SizedBox(width: 15,),
                            TextButton(
                                onPressed: () {
                                  _showDeleteConfirmationDialog();
                                },
                                child: Text(
                                  "Remove",
                                  style: TextStyle(color: AppColors.AppOrangeColor),
                                )),
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        FutureBuilder<List<Datum>>(
                            future: profileController.getCountryList(),
                            initialData: [],
                            builder: (BuildContext context, AsyncSnapshot<List<Datum>> data) {
                              return DropdownButtonFormField<String>(
                                  decoration: InputDecoration(
                                      labelText: 'Country'),
                                  hint: const Text('-- Select --'),
                                  value: profileController.selectCountry,
                                  items: data.data!.map<DropdownMenuItem<String>>((value) {
                                    return DropdownMenuItem<String>(
                                      value: value.name,
                                      child: Text(value.name),
                                    );
                                  }).toList(),
                                  onChanged: (String? newValue) {
                                    profileController.selectCountry = newValue!;
                                  });

                            }
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          keyboardType: TextInputType.text,
                          controller: profileController.stateNameTextController,
                          decoration: InputDecoration(
                              labelText: 'State / Province',
                              hintText: 'type here'
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          keyboardType: TextInputType.text,
                          controller: profileController.cityNameTextController,
                          decoration: InputDecoration(
                              labelText: 'City *',
                              hintText: 'type here'
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
                  height: 51,
                  width: 168,
                  child: ElevatedButton(
                    onPressed: () async {
                      debugPrint('pressed');
                      FocusManager.instance.primaryFocus?.unfocus();
                      String userId = await homeController.getUserId();
                      ResponseModel responseModel = await profileController.updateProfile(
                        userId,
                        profileController.firstNameTextController.text,
                        profileController.lastNameTextController.text,
                        profileController.selectGender.toString(),
                        profileController.selectedImage.toString(),
                        profileController.selectCountry.toString(),
                        profileController.selectState.toString(),
                        profileController.cityNameTextController.text,
                      );
                      if(responseModel.result == 'success'){
                        ScaffoldMessenger.of(context)
                            .showSnackBar(SnackBar(content: Text(responseModel.msg)));
                      }
                      /*bool isNameValidated = conceirgeController.validateFullName(
                              conceirgeController.senderNameController
                          );
                          if(isNameValidated == true) {
                            bool isPhoneValidated = conceirgeController
                                .validatePhone(
                                conceirgeController.senderPhoneController
                            );
                            if (isPhoneValidated == true) {
                              debugPrint('pressed');
                              FocusManager.instance.primaryFocus?.unfocus();
                              String userId = await homeController.getUserId();
                              String err = await profileController.updateProfile(
                                userId,
                                profileController.firstNameTextController.text,
                                profileController.lastNameTextController.text,
                                profileController.selectGender.toString(),
                                profileController.selectedImage.toString(),
                                profileController.selectCountry.toString(),
                                profileController.selectState.toString(),
                                profileController.cityNameTextController.text,
                              );
                              //widget.tabController.animateTo(1);
                            }else{
                              FocusManager.instance.primaryFocus?.unfocus();
                              ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(content: Text('Please enter valid phone Number')));
                            }
                          }else{
                            FocusManager.instance.primaryFocus?.unfocus();
                            ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(content: Text('Please enter valid full name')));
                          }*/
                    },
                    style: ElevatedButton.styleFrom(
                      primary: AppColors.AppOrangeColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                    ),
                    child: Text(
                      "Save",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showDeleteConfirmationDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Delete Image'),
          content: Text('Are you sure you want to delete this image?'),
          actions: [
            ElevatedButton.icon(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: Icon(
                Icons.cancel,
                size: 24.0,
              ),
              label: Text('Cancel'),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
            ),
            ElevatedButton.icon(
              onPressed: () {
                _deleteImage();
                Navigator.of(context).pop();
              },
              icon: Icon(
                Icons.delete,
                size: 24.0,
              ),
              label: Text('Delete'),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
            ),
          ],
        );
      },
    );
  }
}