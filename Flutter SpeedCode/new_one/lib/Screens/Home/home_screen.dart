import 'package:flutter/material.dart';
import 'package:new_one/Screens/Home/Components/app_bar.dart';

import 'Components/body.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    //사이즈 주기
    return Scaffold(
      body: Container(
        height: size.height,
        // 풀스크린 사이즈
        width: size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/bg.png"), fit: BoxFit.cover),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            CustomAppBar(),
            Spacer(),
            //3분의 1의 공간을 차지
            Body(),
            Spacer(
              flex: 2,
            ),
            // 3분의 2 ''
          ],
        ),
      ),
    );
  }
}
