import 'package:flutter/material.dart';
import 'package:learning/presentation/resources/color_manager.dart';
import 'package:learning/presentation/resources/font_manager.dart';
import 'package:learning/presentation/resources/styles_manager.dart';
import 'package:learning/presentation/resources/values_manager.dart';

ThemeData getApplicationTheme() {
  return ThemeData(
      primaryColor: ColorManager.primary,
      primaryColorLight: ColorManager.primaryWithOpacity70,
      primaryColorDark: ColorManager.darkPrimary,
      disabledColor: ColorManager.grey1,
      accentColor: ColorManager.grey,
      splashColor: ColorManager.primaryWithOpacity70,
      cardTheme: CardTheme(
        color: ColorManager.white,
        shadowColor: ColorManager.grey,
        elevation: AppSize.s4,
      ),
      appBarTheme: AppBarTheme(
          centerTitle: true,
          color: ColorManager.primary,
          elevation: AppSize.s4,
          shadowColor: ColorManager.primaryWithOpacity70,
          titleTextStyle: getRegularStyle(
              color: ColorManager.white, fontSize: FontSize.s16)),
      buttonTheme: ButtonThemeData(
        shape: StadiumBorder(),
        disabledColor: ColorManager.grey1,
        buttonColor: ColorManager.primary,
        splashColor: ColorManager.primaryWithOpacity70,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          textStyle: getRegularStyle(color: ColorManager.white),
          primary: ColorManager.primary,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(AppSize.s14)),
        ),
      ),
      textTheme: TextTheme(
          headline1: getSemiBoldStyle(
              color: ColorManager.darkGrey, fontSize: FontSize.s16),
          subtitle1: getMediumStyle(
              color: ColorManager.lightGrey, fontSize: FontSize.s14),
          subtitle2: getMediumStyle(
              color: ColorManager.primary, fontSize: FontSize.s14),
          caption: getRegularStyle(
            color: ColorManager.grey1,
          ),
          bodyText1: getRegularStyle(color: ColorManager.grey)),
      inputDecorationTheme: InputDecorationTheme(
          contentPadding: EdgeInsets.all(AppPadding.p8),
          hintStyle: getRegularStyle(color: ColorManager.grey1),
          labelStyle: getMediumStyle(color: ColorManager.darkGrey),
          errorStyle: getRegularStyle(color: ColorManager.error),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: ColorManager.grey, width: AppSize.s2),
            borderRadius: BorderRadius.all(Radius.circular(AppSize.s8)),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide:
                BorderSide(color: ColorManager.primary, width: AppSize.s2),
            borderRadius: BorderRadius.all(Radius.circular(AppSize.s8)),
          ),
          errorBorder: OutlineInputBorder(
            borderSide:
                BorderSide(color: ColorManager.error, width: AppSize.s2),
            borderRadius: BorderRadius.all(Radius.circular(AppSize.s8)),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide:
                BorderSide(color: ColorManager.primary, width: AppSize.s2),
            borderRadius: BorderRadius.all(Radius.circular(AppSize.s8)),
          )));
}
