import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PortfolioPage extends StatelessWidget {
  const PortfolioPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: ScreenUtil().screenWidth,
        height: ScreenUtil().screenHeight,
        color: Color(0xff1A0B2E),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 118.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 395.w),
                child: Row(
                  children: [
                    Stack(
                      alignment: Alignment.topRight,
                      children: [
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            Container(
                              width: 300.w,
                              height: 400.h,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(200),
                                gradient: RadialGradient(colors: [
                                  Color(0xffffffff),
                                  Color(0xff763CAC),
                                  Color(0xff320F85),
                                  Color(0xff1A0B2E)
                                ]),
                              ),
                            ),
                            Container(
                              width: 165.w,
                              height: 223.h,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          "assets/image/image 1.png"),
                                      fit: BoxFit.contain)),
                            )
                          ],
                        ),
                        Container(
                          width: 92.w,
                          height: 82.h,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("assets/image/Arrow.png"),
                                  fit: BoxFit.cover)),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 200.w),
                          child: Column(
                            children: [
                              RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: 'Hello! I Am',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 19,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    TextSpan(
                                      text: ' Mohammed Memon',
                                      style: TextStyle(
                                        color: Color(0xff7127BA),
                                        fontSize: 19,
                                        decoration: TextDecoration.underline,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: 200.w,
                                height: 20.h,
                                color: Colors.red,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
