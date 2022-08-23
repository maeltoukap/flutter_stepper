import 'package:flutter/material.dart';

const Color primaryMain = Color(0xff3DD6D0);

const Color primaryClick = Color(0xff31ABA6);

const Color disabledText = Color(0xffD3D3D3);

TextStyle bodyStyle(Color c) => TextStyle(
      color: c,
      fontFamily: 'SignikaNegative',
      fontWeight: FontWeight.w400,
      fontSize: 16,
      // height: 0.48,
      inherit: false,
    );

TextStyle buttonStyle(Color c) => TextStyle(
      // fontFamily: 'SignikaNegative',
      fontWeight: FontWeight.w500,
      fontSize: 16,
      // height: 0.48,
      letterSpacing: 1,
      color: c,
    );
