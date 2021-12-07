import 'package:flutter/material.dart';
import 'button_purple.dart';

class DescriptionPlace extends StatelessWidget {

  String namePlace;
  int starts;
  String descriptionText;

  DescriptionPlace(this.namePlace,this.starts,this.descriptionText);


  @override
  Widget build(BuildContext context) {

    final description = Container(
      margin: const EdgeInsets.only(
        top: 20.0,
        left: 20.0,
        bottom: 20.0,
        right: 20.0
      ),

      child: Text(
        descriptionText,
        style: const TextStyle(
          fontFamily: "Lato",
          fontSize: 16.0,
          fontWeight: FontWeight.bold,
          color: Color(0xFF56575a)
        ),
      ),
    );

    final title = Container(
      margin: const EdgeInsets.only(
        top: 320.0,
        left: 20.0,
        right: 20.0,
      ),
      child: Text(
        namePlace,

        style: const TextStyle(
          fontFamily: "Lato",
          fontSize: 30.0,
          fontWeight: FontWeight.w900,
        ),
        textAlign: TextAlign.left,
      ),
    );

    final star = Container(
      margin: const EdgeInsets.only(
        top: 323.0,
        right: 3.0,
      ),

      child: const Icon(
        Icons.star,
        color: Color(0xFFf2C611),
      ),
    );

    final starHalf = Container(
      margin: const EdgeInsets.only(
        top: 323.0,
        right: 3.0,
      ),

      child: const Icon(
        Icons.star_half,
        color: Color(0xFFf2C611),
      ),
    );

    final starBorder = Container(
      margin: const EdgeInsets.only(
        top: 323.0,
        right: 3.0,
      ),

      child: const Icon(
        Icons.star_border,
        color: Color(0xFFf2C611),
      ),
    );

    final stars = Row(
      children: <Widget>[
        star,
        star,
        star,
        star,
        starBorder
      ],
    );

    final titleStars = Row(
      children: <Widget>[
        title,
        stars
      ]
    );

    final descriptionPlace = Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          titleStars,
          description,
          ButtonPurple("Navigate")
        ]
    );

    return descriptionPlace;
    throw UnimplementedError();
  }

}