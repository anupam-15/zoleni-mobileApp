


import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zoleni/view/widgets/appbar.dart';


import '../../constant/appcolors.dart';
import '../../exports/globle_exports.dart';

class TodayOffers extends StatefulWidget {
  const TodayOffers({super.key});

  @override
  State<TodayOffers> createState() => _TodayOffersState();
}

class _TodayOffersState extends State<TodayOffers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(60.0),
          child: MyAppBar(
            title: 'Today Offers ',
          )),
      body: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Column(
              children: [
                // Image.asset("assets/images/todayoffer.png",),

                Card(
                  elevation: 2,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          children: [
                            Image.asset(
                              "assets/images/todayoffer.png",
                              fit: BoxFit.cover,
                            ),
                            Positioned(
                              top: 0,
                              left: 5,
                              child: ElevatedButton(
                                onPressed: () {},
                                child: Text('Trending'),
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: HexColor("#8198E8")
                                ),
                              ),
                            ),

                            Positioned(
                              top: 0,
                              left: 100,
                              child: ElevatedButton(
                                onPressed: () {},
                                child: Text('Featured'),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: HexColor("#FF0000")
                                ),
                              ),

                            ),
                          ],
                        ),
                        SizedBox(height: 5,),
                        Text("Best Hair Style In City", style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                      SizedBox(height: 10,),
                        Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Valid Till", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                          Text("\$400 \$350", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                        ],
                      ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Sep 21, 2023"),
                            InkResponse(
                              onTap: () {
                                // Handle button tap here
                              },
                              child: Container(
                                height: 6.0.h,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.green, width: 2.0),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                padding: EdgeInsets.all(12.0),
                                child: Text(
                                  '10% OFF',
                                  style: TextStyle(
                                    color: Colors.green, // Text color
                                  ),
                                ),
                              ),
                            ),

                          ],
                        ),
                        SizedBox(height: 15,)
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
