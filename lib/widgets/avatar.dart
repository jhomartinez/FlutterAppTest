import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutterapp/widgets/circle_container.dart';

class Avatar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      child: Stack(
        children: <Widget>[
          SvgPicture.network(
              'https://image.flaticon.com/icons/svg/634/634804.svg'),
          Positioned(
            child: CicleContainer(
              child: Icon(Icons.edit),
              size: 60,
            ),
            right: 10,
            top: 0,
          ),
        ],
      ),
    );
  }
}

class CircleContainer {
}
