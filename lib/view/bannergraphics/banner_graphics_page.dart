
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zoleni/view/product/product_information.dart';


 

import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zoleni/view/product/product_information.dart';

import '../../../exports/get_export.dart';
import '../../exports/globle_exports.dart';
import '../widgets/appbar.dart';

class BannerGraphicsPage extends StatefulWidget {
  const BannerGraphicsPage({super.key});

  @override
  State<BannerGraphicsPage> createState() => _BannerGraphicsPageState();
}

class _BannerGraphicsPageState extends State<BannerGraphicsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(60.0),
          child: MyAppBar(
            title: 'Banner Graphics ',
          )),
      body: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Banner Graphics",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[600]),
                ),
                SizedBox(
                  height: 10,
                ),
                Card(
                  elevation: 2,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(

                      children: [
                        Text(
                          "You are free to display banners wherever you like as long as it's allowed. You can host these banners if you wish to do it.",
                          textAlign: TextAlign.justify,
                        ),
                        Text(
                          "By displaying or hosting these banners you must follow our Terms of Service and the ones of the places where you'll display them.",
                          style: TextStyle(
                              color: HexColor(
                            "#1093F1",
                          )),
                          textAlign: TextAlign.justify,
                        ),
                        SizedBox(height: 10,),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.grey,
                              width: 1.0,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset("assets/images/bannergraphics.png"),
                                SizedBox(height: 10,),
                                Row(
                                  children: [
                                    Text("Banner Size: ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                                    Text("728X90")
                                  ],
                                ),
                                Text("Banner HTML: ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.grey[300]
                                  ),
                                  child: Text("<a href=\"http://www.zolenimoving.com/referral&u_refid=922895&referral_source=banner_graphics\" title=\"Zoleni.com\"><img title=\"Zoleni\" src=\"http://www.zolenimoving.com/apis/uploads/affiliate/2812490509012007314.jpg\" alt=\"Zoleni\"></a>"),

                                )
                              ],
                            ),
                          ),
                        ),

                      ],
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
