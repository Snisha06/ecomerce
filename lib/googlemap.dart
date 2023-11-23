import 'package:ecomerce/txtinput.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'helpers.dart';
import 'txxtinput.dart';
import 'colorss.dart';
import 'colorsss.dart';

import 'hlpers.dart';
const LatLng currentLocation = LatLng(25.1193, 55.3773);
class Map2 extends StatefulWidget {
  const Map2({Key? key}) : super(key: key);

  @override
  State<Map2> createState() => _Map1State();
}

class _Map1State extends State<Map2> {
  late GoogleMapController mapController;
  Map<String, Marker>_markers = {};


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.grey ,

      appBar: AppBar(


        leading: IconButton(
          icon: Icon(Icons.my_location_outlined, color: Colors.black,size: 35.0,), onPressed: () {


          showModalBottomSheet(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              isScrollControlled: true,
              isDismissible: false,
              context: context,
              builder: (context) {
                return Container(
                  height: Helper.getScreenHeight(context) * 0.7,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          IconButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            icon: Icon(
                              Icons.clear,
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20.0),
                        child: Row(
                          children: [
                            Text(
                              "Add Delivery Location",
                              style: Helper.getTheme(context)
                                  .headline6,
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20.0),
                        child: Divider(
                          color: AppColor.placeholder
                              .withOpacity(0.5),
                          thickness: 1.5,
                          height: 40,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20.0),
                        child: CustomTextInput(
                            hintText: "Home"),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20.0),
                        child: Row(
                          mainAxisAlignment:
                          MainAxisAlignment.spaceBetween,
                          children: [
                            Text("D/No"),
                            SizedBox(
                              height: 50,
                              width: 100,
                              child: CustomTextInput(
                                hintText: "Address",
                                padding: const EdgeInsets.only(
                                    left: 35),
                              ),
                            ),
                            SizedBox(
                              height: 50,
                              width: 100,
                              child: CustomTextInput(
                                hintText: "Street",
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20.0),
                        child: CustomTextInput(
                            hintText: "District"),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20.0),
                        child: CustomTextInput(
                            hintText: "State"),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20.0),
                        child: CustomTextInput(
                            hintText: "LandMark"),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20.0),
                        child: Row(
                          mainAxisAlignment:
                          MainAxisAlignment.spaceBetween,
                          children: [
                            Text("You can remove this card"),
                            Switch(
                              value: false,
                              onChanged: (_) {},
                              thumbColor:
                              MaterialStateProperty.all(
                                AppColor.secondary,
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20.0),
                        child: SizedBox(
                          height: 50,
                          child: ElevatedButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: Row(
                                mainAxisAlignment:
                                MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.add,
                                  ),
                                  SizedBox(width: 40),
                                  Text("Add Card"),
                                  SizedBox(width: 40),
                                ],
                              )),
                        ),
                      )
                    ],
                  ),
                );
              });

        },
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Delivering to", style: Theme
                .of(context)
                .textTheme
                .subtitle2
                ?.copyWith(color: Colors.black45),
            ),
            InkWell(

              onTap: () {
                // Navigator.push(context,MaterialPageRoute(builder: (context)=>HomeScreen1(),),);
                // Navigator.pop(context);

              },
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text("Mayflower Valencia,Avinashi...", style: Theme
                      .of(context)
                      .textTheme
                      .headline6
                      ?.copyWith(fontWeight: FontWeight.normal),),

                ],
              ),
            )
          ],
        ),
      ),



      body:


      Stack(
        children: [


          GoogleMap(

            initialCameraPosition: const CameraPosition(target: currentLocation,
                zoom: 14
            ),

            onMapCreated: (controller) {
              mapController = controller;
              addMarker('test', currentLocation);
            },
            markers: _markers.values.toSet(),
          ),
          Container(

            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            height: 50,
            child: InkWell(
              onTap: () {

              },


            ),
          )

        ],
      ),
    );







  }

  addMarker(String id, LatLng location) async
  {
    // var markerIcon = await BitmapDescriptor.fromAssetImage(const ImageConfiguration(),"assets/mpsp1.png");
    // var url = 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.fotor.com%2Ffeatures%2Fai-profile-picture-generator%2F&psig=AOvVaw0PsbkrSU1HREQzslO9zLGs&ust=1693379222314000&source=images&cd=vfe&opi=89978449&ved=0CA4QjRxqFwoTCOiXiKyngYEDFQAAAAAdAAAAABAE';
    // var bytes= (await NetworkAssetBundle(Uri.parse(url)).load(url)).buffer.asUint8List();
    //  var bytes = (await NetworkAssetBundle(Uri.parse(url)).load(url)).buffer.asUint8List();
    var marker = Marker(markerId: MarkerId(id),
      position: location,
      infoWindow: const InfoWindow(
        title: 'The Winstonian Food',
        snippet: 'Some description of the place',
      ),
      // icon:markerIcon
      // icon:BitmapDescriptor.fromBytes(bytes),
    );
    _markers[id] = marker;
    setState(() {

    });


  }
}
