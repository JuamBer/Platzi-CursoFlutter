import 'package:flutter/material.dart';
import 'card_image_list.dart';
import 'gradient_back.dart';


class Header extends StatelessWidget {
  Header();

  @override
  Widget build(BuildContext context) {
    final header = Stack(
      children: [
        GradientBack("Bienvenido"),
        CardImageList()
      ],
    );

    return header;
  }

}