// @dart=2.9
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:shahen/colors.dart';
import 'package:sizer/sizer.dart';

class DriverRate extends StatefulWidget {
  const DriverRate({Key key}) : super(key: key);
  static const LatLng _kMapCenter = LatLng(30.045072, 31.196334);

  static const CameraPosition _kInitialPosition =
  CameraPosition(target: _kMapCenter, zoom: 19.0, tilt: 0, bearing: 0);

  @override
  State<DriverRate> createState() => _DriverRateState();
}

class _DriverRateState extends State<DriverRate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const GoogleMap(
        initialCameraPosition: DriverRate._kInitialPosition,
      ),
      floatingActionButton: FloatingActionButton(
          backgroundColor: AppColor.black.withOpacity(0.5),
          onPressed: () {
            Alert(
              context: context,
              title: 'قيم السائق',
              style: AlertStyle(
                alertPadding: const EdgeInsets.all(20),
                titleStyle: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Careem',
                  fontWeight: FontWeight.normal,
                  color: AppColor.black.withOpacity(0.6),
                ),
                overlayColor: Colors.white.withOpacity(0.0),
              ),
              content: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RatingBar.builder(
                        initialRating: 0,
                        minRating: 1,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemCount: 5,
                        itemPadding:
                        const EdgeInsets.symmetric(horizontal: 4.0),
                        itemBuilder: (context, _) => const Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        onRatingUpdate: (rating) {
                          print(rating);
                        },
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Container(
                    height: 16.h,
                    width: 100.w,
                    decoration: const BoxDecoration(
                      border: Border(
                        top: BorderSide(
                          color: AppColor.gray,
                        ),
                        bottom: BorderSide(
                          color: AppColor.gray,
                        ),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(100.0),
                          child: Image.asset(
                            'assets/person.png',
                            fit: BoxFit.fill,
                            height: 12.h,
                            width: 12.h,
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'driver name',
                              style: TextStyle(
                                color: AppColor.black,
                                fontSize: 20,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                            Text(
                              'Truck Type',
                              style: TextStyle(
                                color: AppColor.gray,
                                fontSize: 15,
                              ),
                            ),
                            Text(
                              'ا ح ف ٥٦٤',
                              style: TextStyle(
                                color: AppColor.black,
                                fontSize: 15,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              buttons: [
                DialogButton(
                  width: 65.w,
                  radius: const BorderRadius.all(Radius.circular(30)),
                  onPressed: () {},
                  child: const Text(
                    "إنهاء",
                    style: TextStyle(
                      color: AppColor.white,
                      fontSize: 20,
                      fontFamily: 'Careem',
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  color: AppColor.orange,
                )
              ],
            ).show();
          }),
    );
  }
}
