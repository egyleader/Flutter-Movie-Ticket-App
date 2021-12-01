import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const kPimaryColor = Color(0xffF7BB0E);

const kActionColor = Color(0xffF00000);

const kBackgroundColor = Color(0xff29282C);
const kMovieNameStyle =
    TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.white , );
final kMainTextStyle = GoogleFonts.barlow(
    textStyle: const TextStyle(
        color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.bold));
final kSmallMainTextStyle = kMainTextStyle.copyWith(fontSize: 16.0);

final kPromaryColorTextStyle =
    const TextStyle(color: kPimaryColor, fontSize: 18.0, fontWeight: FontWeight.bold);

final BoxDecoration kRoundedFadedBorder = BoxDecoration(
    border: Border.all(color: Colors.white54, width: .5),
    borderRadius: BorderRadius.circular(15.0));

final ThemeData theme =
    ThemeData.dark().copyWith(textTheme: GoogleFonts.barlowTextTheme());
