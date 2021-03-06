import 'package:flutter/material.dart';
import 'package:regist_page_medical/utils/color.dart';
class HeaderContainer extends StatelessWidget {
  var text = "Login";
  HeaderContainer(this.text);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.2,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [blueColors, blueLightColors],
              end: Alignment.bottomCenter,
              begin: Alignment.topCenter),
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(100),bottomRight: Radius.circular(100))),
      child: Stack(
        children: <Widget>[
          Positioned(
            bottom: 20,
              right: 50,
              child: Text(
            text,
            style: TextStyle(color: Colors.white,fontSize: 20),
          ))
        ],
      ),
    );
  }
}
