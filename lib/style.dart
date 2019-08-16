import 'package:flutter/material.dart';

const TEXT_SIZE_LARGE = 22.0;
const TEXT_SIZE_MEDIUM = 18.0;
const TEXT_SIZE_REGULAR = 16.0;
const TEXT_SIZE_SMALL = 14.0;

const String DEFAULT_FONT = "Montserrat";

const Color TEXT_COLOR_DARK = Colors.black;
const Color TEXT_COLOR_LIGHT = Colors.white;
const Color TEXT_COLOR_ACCENT = Colors.red;
const Color TEXT_COLOR_FAINT = Color.fromRGBO(125, 125, 125, 1.0);

const DEFAULT_PADDING_HORIZONTAL = 12.0;

const TextStyle_AppBar = TextStyle(
    fontFamily: DEFAULT_FONT,
    fontWeight: FontWeight.w300,
    fontSize: TEXT_SIZE_MEDIUM,
    color: TEXT_COLOR_LIGHT);

const TextStyle_Title = TextStyle(
    fontFamily: DEFAULT_FONT,
    fontWeight: FontWeight.w300,
    fontSize: TEXT_SIZE_LARGE,
    color: TEXT_COLOR_DARK);

const TextStyle_Body1 = TextStyle(
    fontFamily: DEFAULT_FONT,
    fontWeight: FontWeight.w300,
    fontSize: TEXT_SIZE_REGULAR,
    color: TEXT_COLOR_DARK);

const TextStyle_Subtitle = TextStyle(
    fontFamily: DEFAULT_FONT,
    fontWeight: FontWeight.w300,
    fontSize: TEXT_SIZE_MEDIUM,
    color: TEXT_COLOR_ACCENT);

const TextStyle_Caption = TextStyle(
  fontFamily: DEFAULT_FONT,
  fontWeight: FontWeight.w300,
  fontSize: TEXT_SIZE_REGULAR,
  color: TEXT_COLOR_DARK,
);
