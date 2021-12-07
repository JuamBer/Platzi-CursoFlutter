import 'package:flutter/material.dart';
import 'package:platzi_trips_app/profile/profile_info.dart';

class ProfileInfoButtons extends StatelessWidget {
  ProfileInfoButtons();

  @override
  Widget build(BuildContext context) {
    final profileInfoButtons = Container(

      child: Column(
        children: [
          ProfileInfo("assets/img/perfil.jpg","Juan Sáez García","contacto@juamber.com"),
        ],
      ),
    );

    return profileInfoButtons;
  }

}