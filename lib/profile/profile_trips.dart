import 'package:flutter/material.dart';
import 'package:platzi_trips_app/profile/header.dart';

class ProfileTrips extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var profileTrips = Stack(
      children: [

        ListView(
          children: [
            Container()
          ],
        ),
        Header()

      ],
    );

    return profileTrips;
  }
}