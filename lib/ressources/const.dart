import 'package:flutter/material.dart';

const Color primaryMain = Color(0xff3DD6D0);

const Color primaryClick = Color(0xff31ABA6);

const Color disabledText = Color(0xffD3D3D3);

const Color primaryText = Color(0xff242424);

TextStyle bodyStyle(Color c) => TextStyle(
      color: c,
      fontFamily: 'SignikaNegative',
      fontWeight: FontWeight.w400,
      fontSize: 16,
      // height: 0.48,
      inherit: false,
    );

TextStyle buttonStyle(Color c) => TextStyle(
      fontFamily: 'SignikaNegative',
      fontWeight: FontWeight.w500,
      fontSize: 16,
      // height: 0.48,
      letterSpacing: 1,
      color: c,
    );
TextStyle subtitleStyle(Color c) => TextStyle(
      color: c,
      fontFamily: 'SignikaNegative',
      fontWeight: FontWeight.w600,
      fontSize: 20,
      // height: 0.56,
    );

Widget CustomAppBar({required String label, required BuildContext context}) =>
    Container(
      height: 96,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(24), bottomRight: Radius.circular(24)),
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(145, 158, 171, 0.24),
            blurRadius: 9,
            spreadRadius: 4,
            offset: Offset(2, 0),
          ),
        ],
      ),
      child: Row(
        children: [
          InkWell(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Container(
              height: 60,
              margin: const EdgeInsets.only(top: 42, left: 16),
              child: const Icon(
                Icons.arrow_back_ios_new_rounded,
                size: 25,
                color: primaryMain,
              ),
            ),
          ),
          Container(
            height: 28,
            margin: const EdgeInsets.only(top: 48, left: 16),
            child: Center(
                child: Text(
              label,
              style: subtitleStyle(primaryText),
            )),
          ),
        ],
      ),
    );
void nav(Widget navigate, BuildContext context, {bool close = false}) {
  close
      ? Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (_) => navigate), (route) => false)
      : Navigator.push(
          context, MaterialPageRoute(builder: (context) => navigate));
}
