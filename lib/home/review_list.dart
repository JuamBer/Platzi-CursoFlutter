import 'package:flutter/material.dart';
import 'package:platzi_trips_app/home/review.dart';

class ReviewList extends StatelessWidget {

  ReviewList();


  @override
  Widget build(BuildContext context) {
    final reviewList = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Review("assets/img/ivan.jpg", "Ivan Soriano", "2 reviews 3 photos", "Soy el mejor boxeador del planeta pa'", 5),
        Review("assets/img/raul.jpg", "Raúl Morales", "5 reviews 5 photos", "La verdad un buen lugar para todo", 4),
        Review("assets/img/noel.jpg", "Noel Guaraná", "1 reviews 7 photos", "Estoy bastante adicto a que me insulten", 4)
      ],
    );
    return reviewList;

}}