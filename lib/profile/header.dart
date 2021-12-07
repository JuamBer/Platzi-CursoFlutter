import 'package:flutter/material.dart';
import 'gradient_back.dart';
import 'package:platzi_trips_app/profile/profile_info_buttons.dart';


class Header extends StatelessWidget {
  Header();

  @override
  Widget build(BuildContext context) {
    final header = Stack(

      children: [
        GradientBack("Profile"),
        ProfileInfoButtons()
      ],
    );

    return header;
  }

}