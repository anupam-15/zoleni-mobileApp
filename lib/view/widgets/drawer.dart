


import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zoleni/view/widgets/appbar.dart';


import '../../constant/appcolors.dart';
import '../../exports/globle_exports.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  final GlobalKey<ScaffoldState> _drawerscaffoldkey =
  new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _drawerscaffoldkey,
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            height: MediaQuery.of(context).size.height,
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
                    style: TextStyle(color: Colors.deepOrange),
                  ),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: AssetImage("assets/images/User_Icon.png"),
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
                      onTap: () {},
                    ),
                    ListTile(
                      leading: Text(""),
                      title: Text("Change Password"),
                      onTap: () {},
                    ),
                    ListTile(
                      leading: Text(""),
                      title: Text("Manage Address"),
                      onTap: () {},
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
                      onTap: () {},
                    ),
                    ListTile(
                      leading: Text(""),
                      title: Text("Business Hours"),
                      onTap: () {},
                    ),
                    ListTile(
                      leading: Text(""),
                      title: Text("Products"),
                      onTap: () {},
                    ),
                    ListTile(
                      leading: Text(""),
                      title: Text("Invoices"),
                      onTap: () {},
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
                    "My Orders",
                    style: TextStyle(),
                  ),
                  children: [
                    ListTile(
                      leading: Text(""),
                      title: Text("Delivery"),
                      onTap: () {},
                    ),
                    ListTile(
                      leading: Text(""),
                      title: Text("Concierge"),
                      onTap: () {},
                    ),
                    ListTile(
                      leading: Text(""),
                      title: Text("Storage"),
                      onTap: () {},
                    ),
                    ListTile(
                      leading: Text(""),
                      title: Text("Moving"),
                      onTap: () {},
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
                ExpansionTile(
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
                      onTap: () {},
                    ),
                    ListTile(
                      leading: Text(""),
                      title: Text("Friend Referral"),
                      onTap: () {},
                    ),
                    ListTile(
                      leading: Text(""),
                      title: Text("Banner Graphics"),
                      onTap: () {},
                    ),
                    ListTile(
                      leading: Text(""),
                      title: Text("API Connections"),
                      onTap: () {},
                    ),
                    ListTile(
                      leading: Text(""),
                      title: Text("My Clients"),
                      onTap: () {},
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
                      onTap: () {},
                    ),
                    ListTile(
                      leading: Text(""),
                      title: Text("Claim Money"),
                      onTap: () {},
                    ),
                    ListTile(
                      leading: Text(""),
                      title: Text("Reward Points"),
                      onTap: () {},
                    ),
                    ListTile(
                      leading: Text(""),
                      title: Text("Transaction History"),
                      onTap: () {},
                    ),
                  ],
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
    );
  }
}
