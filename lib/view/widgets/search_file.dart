

import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zoleni/controller/conceirge_controller.dart';
import 'package:zoleni/exports/globle_exports.dart';

import '../../constant/appcolors.dart';
import '../../exports/get_export.dart';

class SearchScreen extends StatefulWidget {
  final ConceirgeController conceirgeController;
  bool isFocus;
  SearchScreen({super.key, required this.conceirgeController, required this.isFocus});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final ConceirgeController conceirgeController = Get.put(ConceirgeController());
  @override
  Widget build(BuildContext context) {
    return Dialog.fullscreen(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
          backgroundColor: Colors.deepOrange,
        ),
        body: Scaffold(
          backgroundColor: Colors.white,
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(
              10.0.h
            ),
            child: Align(
              alignment: Alignment.topCenter,
              child: Container(
                width: 85.0.w,
                padding: EdgeInsets.symmetric(vertical: 2.0.h),
                decoration: BoxDecoration(
                  color: Colors.transparent,
                ),
                child: TextFormField(
                  onTapOutside: (v){
                    FocusScope.of(context).unfocus();
                  },
                  style: TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                        borderSide: BorderSide.none,
                    ),

                    //prefixIcon: Icon(Icons.search,color: AppColors.FadedWhiteHappyColor,),
                    filled: true,
                    fillColor: Colors.white10,
                    hintText: 'Search',
                    contentPadding: EdgeInsets.symmetric(vertical: 5.0),
                    hintStyle: TextStyle(
                       // color: AppColors.FadedWhiteHappyColor,
                        overflow: TextOverflow.ellipsis
                    ),
                  ),
                  autofocus: widget.isFocus,
                  onEditingComplete: (){
                    widget.isFocus = false;
                    Get.forceAppUpdate();
                    Navigator.pop(context);
                  },
                  controller: conceirgeController.addressTextController,
                  onChanged: (value) async {
                    if(value != '') {
                      conceirgeController.addressResponse = await
                          conceirgeController
                          .searchResult(value);
                      Get.forceAppUpdate();
                    }else{
                      conceirgeController.addressResponse = [];
                      Get.forceAppUpdate();
                    }
                  },
                ),
              ),
            ),
          ),
          body: StatefulBuilder(
            builder: (context,p) {
              return ListView.builder(
                  itemCount: conceirgeController.addressResponse.length,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context,index){
                    if(conceirgeController.addressResponse == []){
                      return Center(
                        child: CircularProgressIndicator(),
                      );
                    }else{
                      if(conceirgeController.addressResponse[index].id != null
                          && conceirgeController.addressResponse[index].id.toString() != ''){
                        return Card(
                          child: ListTile(
                            title: Text(conceirgeController.addressResponse[index].address.toString(),
                                style: TextStyle(color: Colors.black),
                            ),
                            onTap: (){
                              Navigator.pop(context);
                            },
                          ),
                        );
                      }
                    }

                    return null;
                  }
              );
            }
          ),
        ),
      ),
    );
  }
}
