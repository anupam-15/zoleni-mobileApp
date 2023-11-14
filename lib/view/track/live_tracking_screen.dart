

import 'dart:async';

import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zoleni/view/track/track_order_screen.dart';
import 'package:zoleni/view/widgets/appbar.dart';


import '../../constant/appcolors.dart';
import '../../exports/globle_exports.dart';

class LiveTracking extends StatefulWidget {
  const LiveTracking({super.key});

  @override
  State<LiveTracking> createState() => _LiveTrackingState();
}

final Completer<GoogleMapController> _controller =
    Completer<GoogleMapController>();

class _LiveTrackingState extends State<LiveTracking> {
  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#ECF0F3"),
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(60.0),
          child: MyAppBar(
            title: 'Live Tracking',
          )),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              // GoogleMap(
              //   initialCameraPosition: _kGooglePlex,
              //   mapType: MapType.normal,
              //
              //   onMapCreated: (GoogleMapController controller) {
              //     _controller.complete(controller);
              //   },
              // ),
              SizedBox(
                height: 50,
              ),
              Center(
                child: Container(
                  height: 6.0.h,
                  width: 35.0.w,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => TrackOrder()));
                    },
                    child: Text(
                      "Track",
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
    );
  }
}
