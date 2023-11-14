/*
import 'package:zoleni/exports/globle_exports.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:zoleni/constant/shared_preference.dart';
import 'package:zoleni/controller/home_controller.dart';
import 'package:zoleni/view/business_page/add_business_page.dart';
import 'package:zoleni/view/apiconnection/api_connection_page.dart';
import 'package:zoleni/view/bannergraphics/banner_graphics_page.dart';
import 'package:zoleni/view/businesshours/business_hours.dart';
import 'package:zoleni/view/invoice/business_invoice.dart';
import 'package:zoleni/view/login_signup/change_password.dart';
import 'package:zoleni/view/claimmoney/claim_money_page.dart';
import 'package:zoleni/view/conceirge/conceirge.dart';
import 'package:zoleni/view/conceirge_order/conceirge_order_sender.dart';
import 'package:zoleni/view/friendreferral/friend_referral_page.dart';
import 'package:zoleni/view/login_signup/login_screen.dart';
import 'package:zoleni/view/manageAddress/manage_addresses.dart';
import 'package:zoleni/view/moving_client/moving_loading_form.dart';
import 'package:zoleni/view/moving_client/moving_order_history.dart';
import 'package:zoleni/view/myclient/my_client_page.dart';
import 'package:zoleni/view/paymentmethods/payment_methods_page.dart';
import 'package:zoleni/view/product/product_information.dart';
import 'package:zoleni/view/profile/profile_information.dart';
import 'package:zoleni/view/referralURL/referral_link_page.dart';
import 'package:zoleni/view/rewardpoints/rewards_points.dart';
import 'package:zoleni/view/storage_order_history.dart';
import 'package:zoleni/view/todayoffer/today_offers.dart';
import 'package:zoleni/view/transactionhistory/transaction_history.dart';
import 'package:zoleni/view/login_signup/welcome_screen.dart';

import '../widgets/custom_tabs.dart';

class HomeScreen extends StatefulWidget {
  final String userId;

  const HomeScreen({super.key, required this.userId});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _drawerscaffoldkey =
  new GlobalKey<ScaffoldState>();
  TabController? _tabController;
  final HomeController homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Image.asset(
          "assets/images/Zolonilogo2.png",
          fit: BoxFit.contain,
          height: 32,
        ),
        leading: IconButton(
          onPressed: () {
            if (_drawerscaffoldkey.currentState!.isDrawerOpen) {
              Navigator.pop(context);
            } else {
              _drawerscaffoldkey.currentState!.openDrawer();
            }
          },
          icon: Icon(
            Icons.menu,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () async {
                SharedPreferences sharedPreferences =
                await SharedPreferences.getInstance();
                sharedPreferences.remove(SharedPref.USER_ID);
                Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(builder: (context) => WelcomeScreen()),
                        (Route<dynamic> route) => false);
              },
              icon: Icon(
                Icons.login,
                color: AppColors.AppOrangeColor,
              ))
        ],
      ),
      body: Scaffold(
        key: _drawerscaffoldkey,
        drawer: Drawer(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Container(
              color: Colors.white,
              //height: MediaQuery.of(context).size.height,
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  UserAccountsDrawerHeader(
                    accountName: Text(
                      "JRanjan S.",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                    accountEmail: Text(
                      "Z ID: 769045364373",
                      style: TextStyle(color: AppColors.AppOrangeColor),
                    ),
                    currentAccountPicture: CircleAvatar(
                      backgroundImage:
                      AssetImage("assets/images/User_Icon.png"),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                  ),
                  ExpansionTile(
                    leading: Image.asset(
                      "assets/icons/usersetting.png",
                      width: 24,
                      height: 24,
                    ),
                    title: Text(
                      "Account Settings",
                      style: TextStyle(),
                    ),
                    children: [
                      ListTile(
                        leading: Text(""),
                        title: Text("Profile Information"),
                        onTap: () {
                          Get.to(UpdateProfileInformation());
                        },
                      ),
                      ListTile(
                        leading: Text(""),
                        title: Text("Change Password"),
                        onTap: () {
                          Get.to(ChangePassword());
                        },
                      ),
                      ListTile(
                        leading: Text(""),
                        title: Text("Manage Address"),
                        onTap: () {
                          Get.to(ManageAddress());
                        },
                      ),
                    ],
                  ),
                  ExpansionTile(
                    leading: Image.asset(
                      "assets/icons/Tool.png",
                      width: 24,
                      height: 24,
                    ),
                    title: Text(
                      "Business Tools",
                      style: TextStyle(),
                    ),
                    children: [
                      ListTile(
                        leading: Text(""),
                        title: Text("Business Pages"),
                        onTap: () {
                          Get.to(AddBusinessPage());
                        },
                      ),
                      ListTile(
                        leading: Text(""),
                        title: Text("Business Hours"),
                        onTap: () {
                          Get.to(BusinessHours());
                        },
                      ),
                      ListTile(
                        leading: Text(""),
                        title: Text("Products"),
                        onTap: () {
                          Get.to(ProductInformation());
                        },
                      ),
                      ListTile(
                        leading: Text(""),
                        title: Text("Invoices"),
                        onTap: () {
                          Get.to(BusinessInvoice());
                        },
                      ),
                    ],
                  ),
                  ExpansionTile(
                    leading: Image.asset(
                      "assets/icons/Group.png",
                      width: 24,
                      height: 24,
                    ),
                    title: Text(
                      "My Orders",
                      style: TextStyle(),
                    ),
                    children: [
                      ListTile(
                        leading: Text(""),
                        title: Text("Delivery"),
                        onTap: () {
                          Get.to(Scaffold(backgroundColor: Colors.redAccent,));
                        },
                      ),
                      ListTile(
                        leading: Text(""),
                        title: Text("Concierge"),
                        onTap: () {
                          Get.to(ConceirgeOrderSender());
                        },
                      ),
                      ListTile(
                        leading: Text(""),
                        title: Text("Storage"),
                        onTap: () {
                          Get.to(StorageOrderHistory());
                        },
                      ),
                      ListTile(
                        leading: Text(""),
                        title: Text("Moving"),
                        onTap: () {
                          Get.to(MovingOrderHistory());
                        },
                      ),
                    ],
                  ),
                  ExpansionTile(
                    leading: Image.asset(
                      "assets/icons/Group.png",
                      width: 24,
                      height: 24,
                    ),
                    title: Text(
                      "Saved Quotes",
                      style: TextStyle(),
                    ),
                    children: [
                      ListTile(
                        leading: Text(""),
                        title: Text("Delivery Quotes"),
                        onTap: () {},
                      ),
                      ListTile(
                        leading: Text(""),
                        title: Text("Concierge Quotes"),
                        onTap: () {},
                      ),
                    ],
                  ),
                  ListTile(
                    onTap: () {
                      Get.to(TodayOffers());
                    },
                    leading: Image.asset(
                      "assets/icons/offers_icon .png",
                      width: 24,
                      height: 24,
                    ),
                    title: Text(
                      "Today Offers",
                      style: TextStyle(),
                    ),
                    trailing: SizedBox.shrink(),
                  ),
                  ExpansionTile(
                    leading: Image.asset(
                      "assets/icons/make-money-icon.png",
                      width: 24,
                      height: 24,
                    ),
                    title: Text(
                      "Make Money With Us",
                      style: TextStyle(),
                    ),
                    children: [
                      ListTile(
                        leading: Text(""),
                        title: Text("Referral URL Link"),
                        onTap: () {
                          Get.to(ReferralLinkPage());
                        },
                      ),
                      ListTile(
                        leading: Text(""),
                        title: Text("Friend Referral"),
                        onTap: () {
                          Get.to(FriendReferralPage());
                        },
                      ),
                      ListTile(
                        leading: Text(""),
                        title: Text("Banner Graphics"),
                        onTap: () {
                          Get.to(BannerGraphicsPage());
                        },
                      ),
                      ListTile(
                        leading: Text(""),
                        title: Text("API Connections"),
                        onTap: () {
                          Get.to(APIConnectionPage());
                        },
                      ),
                      ListTile(
                        leading: Text(""),
                        title: Text("My Clients"),
                        onTap: () {
                          Get.to(MyClient());
                        },
                      ),
                    ],
                  ),
                  ExpansionTile(
                    leading: Image.asset(
                      "assets/icons/Documents.png",
                      width: 24,
                      height: 24,
                    ),
                    title: Text(
                      "Accounting",
                      style: TextStyle(),
                    ),
                    children: [
                      ListTile(
                        leading: Text(""),
                        title: Text("Payment Methods"),
                        onTap: () {
                          Get.to(PaymentMethods());
                        },
                      ),
                      ListTile(
                        leading: Text(""),
                        title: Text("Claim Money"),
                        onTap: () {
                          Get.to(ClaimMoney());
                        },
                      ),
                      ListTile(
                        leading: Text(""),
                        title: Text("Reward Points"),
                        onTap: () {
                          Get.to(RewardsPoints());
                        },
                      ),
                      ListTile(
                        leading: Text(""),
                        title: Text("Transaction History"),
                        onTap: () {
                          Get.to(TransactionHistory());
                        },
                      ),
                    ],
                  ),
                  ListTile(
                    onTap: () {
                      Get.to(MovingLoadingForm());
                    },
                    leading: Icon(
                      Icons.moving,
                      color: AppColors.AppOrangeColor,
                    ),
                    title: Text(
                      "Moving",
                      style: TextStyle(),
                    ),
                    trailing: SizedBox.shrink(),
                  ),
                  ListTile(
                    onTap: () async {
                      final SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
                      sharedPreferences.remove(SharedPref.USER_ID);
                      String userId = await homeController.getUserId();
                      print(userId);
                      if(userId == 'null'){
                        Navigator.of(context).pushAndRemoveUntil(
                            MaterialPageRoute(
                                builder: (context) =>
                                    LoginScreen(module: 'client',)),
                                (Route<dynamic> route) => false);
                      }
                    },
                    leading: Icon(
                      Icons.logout,
                      color: AppColors.AppOrangeColor,
                    ),
                    title: Text(
                      "Signout",
                      style: TextStyle(),
                    ),
                    trailing: SizedBox.shrink(),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Center(
                      child: Image.asset(
                        "assets/images/Zolonilogo2.png",
                      ))
                ],
              ),
            ),
          ),
        ),
        body: DefaultTabController(
            length: 5,
            child: Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.white,
                automaticallyImplyLeading: false,
                title: TabBar(
                  isScrollable: true,
                  onTap: (index) {
                    print(index);
                  },
                  controller: _tabController,
                  tabs: [
                    CustomTab(
                      text: 'Concierge',
                    ),
                    CustomTab(
                      text: 'Delivery',
                    ),
                    CustomTab(
                      text: 'Moving',
                    ),
                    CustomTab(
                      text: 'Storage',
                    ),
                    CustomTab(
                      text: 'Quote Rate',
                    ),
                  ],
                  indicator: BoxDecoration(
                    color: AppColors.AppOrangeColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  unselectedLabelColor: AppColors.AppOrangeColor,
                  // labelColor: AppColors.AppOrangeColor,
                  //unselectedLabelColor: Colors.grey,

                  indicatorColor: Colors.white,
                ),
              ),
              body: TabBarView(
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    Conceirge(),
                    Delivery(),
                    Scaffold(
                      body: Center(child: Text('Coming Soon !')),
                    ),
                    Scaffold(
                      body: Center(child: Text('Coming Soon !')),
                    ),
                    Scaffold(
                      body: Center(child: Text('Coming Soon !')),
                    )
                  ]),
            )),
      ),
    );
  }
}
*/
