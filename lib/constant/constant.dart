import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const Color kBodyColor = Color(0XFFF3F3F8);
const Color kPurpleColor = Color(0XFF525298);
const Color kValueColor = Color(0xFF2C2C63);
const Color kLiteColor = Color(0X802C3A4B);
final fontPoppin = GoogleFonts.poppins();

final TextStyle kBodyTextStyle = GoogleFonts.poppins(
    fontSize: 14, color: const Color(0x80082431), fontWeight: FontWeight.w400);
final TextStyle kTitleTextStyle = GoogleFonts.poppins(
    fontSize: 14, color: const Color(0xFF082431), fontWeight: FontWeight.w400);
final TextStyle kScreenTitleTextStyle = GoogleFonts.poppins(
    fontSize: 18, color: const Color(0xFF082431), fontWeight: FontWeight.w400);
final TextStyle kValueTextStyle = fontPoppin.copyWith(
    fontSize: 14, color: kValueColor, fontWeight: FontWeight.w400);
final TextStyle kPurpleTextStyle = fontPoppin.copyWith(
    fontSize: 14, fontWeight: FontWeight.w400, color: kPurpleColor);
