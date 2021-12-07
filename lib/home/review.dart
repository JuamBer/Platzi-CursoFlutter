import 'package:flutter/material.dart';

class Review extends StatelessWidget {

  String pathImage;
  String name;
  String details;
  String comment;
  int stars;

  Review(this.pathImage,this.name,this.details,this.comment,this.stars);


  @override
  Widget build(BuildContext context) {

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

    final userName = Container(
      margin: const EdgeInsets.only(
        left:20.0
      ),
      child: Text(
        name,
        overflow: TextOverflow.ellipsis,
        textAlign: TextAlign.left,
        style: const TextStyle(
          fontFamily: "Lato",
          fontSize:17.0
        )
      ),
    );

    final userInfo = Container(
      margin: const EdgeInsets.only(
          left:20.0
      ),
      child: Text(
          details,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.left,
          style: const TextStyle(
              fontFamily: "Lato",
              fontSize:13.0,
              color: Color(0xFFa3a5a7)
          )
      ),
    );

    final userComment = Container(
      margin: const EdgeInsets.only(
          left:20.0
      ),
      child: Text(
          comment,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.left,
          style: const TextStyle(
              fontFamily: "Lato",
              fontSize:13.0,
              fontWeight: FontWeight.bold
          )
      ),
    );

    final userDetails = Column(
      crossAxisAlignment: CrossAxisAlignment.start,

      children: [
        userName,
        userInfo,
        userComment
      ],
    );

    final stars = Row(
      children: [
        star,
        star,
        star,
        starHalf,
        starBorder
      ],
    );

    final userDetailsStars = Row(
      children: [
        userDetails,
        //stars
      ],
    );

    final photo = Container(
      margin: const EdgeInsets.only(
        top:20.0,
        left: 20.0
      ),
      width: 80.0,
      height: 80.0,

      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(pathImage),
        ),
      ),
    );

    final review = Row(
      children: [
        photo,
        userDetailsStars,
      ],
    );

    return review;
  }

}