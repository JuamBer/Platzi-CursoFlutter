import 'package:flutter/material.dart';

class ProfileInfo extends StatelessWidget {

  String pathImage;
  String name;
  String email;

  ProfileInfo(this.pathImage,this.name,this.email);

  @override
  Widget build(BuildContext context) {

    final profileImg = Container(
      height: 100.0,
      width: 100.0,
      margin: const EdgeInsets.only(
          top: 125.0,
          left:20.0
      ),
      decoration: BoxDecoration(
          border: Border.all(width: 2.0, color: const Color(0xFFFFFFFF)),
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(pathImage)
          ),
          borderRadius: BorderRadius.all(Radius.circular(50.0)),
          shape: BoxShape.rectangle,
          boxShadow: const <BoxShadow> [
            BoxShadow(
                color: Colors.black38,
                blurRadius:15.0,
                offset: Offset(0.5,0.7)
            )
          ]
      ),

    );

    final profileNameEmail = Container(
        margin: const EdgeInsets.only(
            top:125.0,
            left: 25.0
        ),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                child: Text(
                  name,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                    fontFamily: "Lato",
                    fontWeight: FontWeight.bold,
                  )
              ),
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
              ),

            Text(
                email,
                textAlign: TextAlign.left,
                overflow: TextOverflow.ellipsis,
            )
          ],
        )
    );

    final profileInfo = Container(
      child: Row(
        children: [
          profileImg,
          profileNameEmail
        ],
      ),
    );

    return profileInfo;
  }
}