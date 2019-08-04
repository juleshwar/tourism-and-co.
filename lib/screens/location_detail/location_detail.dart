import 'package:flutter/material.dart';
import 'package:tourist_places/screens/location_detail/image_banner.dart';
import 'text_section.dart';

class LocationDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Marvel Superheroes"),
        backgroundColor: Colors.black,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ImageBanner("assets/images/thanos.jpg"),
          TextSection("Guy #1", "Lorem ipusm jashd kja sdkjh aksjdh  liasdj llasj dlkajs dlja slkdj lasj lasj "),
          TextSection("Guy #1", "Lorem ipusm jashd kja sdkjh aksjdh  liasdj llasj dlkajs dlja slkdj lasj lasj "),
          TextSection("Guy #1", "Lorem ipusm jashd kja sdkjh aksjdh  liasdj llasj dlkajs dlja slkdj lasj lasj "),
          TextSection("Guy #1", "Lorem ipusm jashd kja sdkjh aksjdh  liasdj llasj dlkajs dlja slkdj lasj lasj ")
        ],
      )
    );
  }
}