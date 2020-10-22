import 'package:flutter/material.dart';

class CicleContainer extends StatelessWidget {
  final Widget child;
  final double size;

  CicleContainer(
      {@required this.child, @required this.size})
      : assert(child != null),
       assert(size != null && size >=50);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      alignment: Alignment.center,
      child: Center(
        child: this.child,
      ),
      decoration: BoxDecoration(
          color: Color(0xfff0f0f0),
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 10,
              offset: Offset(5, 5),
            )
          ]),
    );
  }
}
