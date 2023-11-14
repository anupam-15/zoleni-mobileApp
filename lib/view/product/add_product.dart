


import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zoleni/view/product/product_information.dart';


 

import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zoleni/view/product/product_information.dart';

import '../../exports/globle_exports.dart';
import '../../../exports/get_export.dart';
import '../widgets/appbar.dart';

class AddProduct extends StatefulWidget {
  const AddProduct({super.key});

  @override
  State<AddProduct> createState() => _AddProductState();
}

class _AddProductState extends State<AddProduct> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(60.0),
          child: MyAppBar(
            title: 'Add Product',
          )),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Center(
                child: ElevatedButton.icon(
                  onPressed: () {
                    Get.to(ProductInformation());
                  },
                  label: Text('Add'),
                  icon: Icon(
                    Icons.add_circle_outline,
                    size: 24.0,
                  ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepOrange,
                  fixedSize: Size(25.0.w, 6.0.h)
                ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
