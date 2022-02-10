

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_foot_delivery/page/SplashPage.dart';

class Application extends StatefulWidget {
  static const ROUTE_NAME = 'Application';
  @override
  ApplicationState createState() => ApplicationState();

}

class ApplicationState extends State<Application>{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light().copyWith(
          primaryColor: Colors.black,
          accentColor: Colors.black,
          accentColorBrightness: Brightness.dark,
          toggleableActiveColor: Colors.red,
          bottomAppBarColor: Colors.white,
          primaryColorBrightness: Brightness.light,
          primaryColorDark: Colors.black87,
          primaryIconTheme: IconThemeData(
              color: Colors.black
          ),
          brightness: Brightness.light,
          cardColor: Colors.white,
          backgroundColor: Colors.grey[200],
          dialogBackgroundColor: Colors.white,
          scaffoldBackgroundColor: Color(0xfff6f5f5),
          colorScheme: ColorScheme.light(
              onPrimary: Colors.black
          ),
          sliderTheme: SliderTheme.of(context).copyWith(
            activeTrackColor: Color(0xff3f414e),
            inactiveTrackColor: Color(0xffa0a3b1),
            trackHeight: 0.5,
            thumbColor: Color(0xff3f414e),
            thumbShape: RoundSliderThumbShape(enabledThumbRadius: 8.0),
            overlayColor: Colors.purple.withAlpha(32),
            overlayShape: RoundSliderOverlayShape(overlayRadius: 14.0),
          ),
          appBarTheme: AppBarTheme(
              color: Color(0xfff6f5f5),
              // textTheme: TextTheme(
              //     title: TextStyle(
              //         fontFamily: 'SFProRegular',
              //         color: Color(0xff2d0c57),
              //         fontSize: 17,
              //         fontWeight: FontWeight.w600
              //     )
              // ),
              centerTitle: true,
              brightness: Brightness.light,
              elevation: 0
          ),
          textTheme: TextTheme(
              button: ThemeData.light().textTheme.button!.copyWith(
                  color: Color(0xff7203ff),
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'SFProRegular'
              ),
              caption: ThemeData.light().textTheme.caption!.copyWith(
                  color: Color(0xff9586a8),
                  fontSize: 12,
                  fontWeight: FontWeight.normal,
                  fontFamily: 'SFProRegular'
              ),
              headline6: ThemeData.light().textTheme.headline6!.copyWith(
                  color: Color(0xff2d0c57),
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'SFProBold'

              ),

              headline5: ThemeData.light().textTheme.headline5!.copyWith(
                  color: Color(0xff2d0c57),
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'SFProBold'

              ),
              headline4: ThemeData.light().textTheme.headline4!.copyWith(
                  color: Color(0xff2d0c57),
                  fontSize: 34,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'SFProBold'

              ),
              headline3: ThemeData.light().textTheme.bodyText2!.copyWith(
                  color: Color(0xff2d0c57),
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'SFProBold'

              ),
              headline2: ThemeData.light().textTheme.bodyText2!.copyWith(
                  color: Color(0xff9586a8),
                  fontSize: 24,
                  fontWeight: FontWeight.normal,
                  fontFamily: 'SFProRegular'

              ),
              headline1: ThemeData.light().textTheme.headline1!.copyWith(
                  color: Color(0xff2d0c57),
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'SFProBold'

              ),
              subtitle1:ThemeData.light().textTheme.subtitle1!.copyWith(
                  color: Color(0xff9586a8),
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                  fontFamily: 'SFProRegular'

              ),

              subtitle2:  ThemeData.light().textTheme.subtitle2!.copyWith(
                  color: Color(0xff9586a8),
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                  fontFamily: 'SFProRegular'

              ),

              bodyText2:  ThemeData.light().textTheme.bodyText2!.copyWith(
                  color: Color(0xffffffff),
                  fontSize: 15,
                  fontFamily: 'SFProBold'

              ),
              bodyText1:  ThemeData.light().textTheme.bodyText1!.copyWith(
                  color: Color(0xff9586a8),
                  fontSize: 17,
                  fontFamily: 'SFProBold'

              )
          ),
          inputDecorationTheme: InputDecorationTheme(
            fillColor: Colors.white,
            filled: true,
            hintStyle:
            TextStyle(color: Color(0xff9586a8), fontSize: 17, fontFamily: 'SFProRegular', fontWeight: FontWeight.normal),
            labelStyle:
            TextStyle(color: Color(0xff414141), fontSize: 12, fontWeight: FontWeight.bold, fontFamily: 'SFUIDisplayBold'),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            suffixStyle: TextStyle(color: Colors.black),
            errorStyle: TextStyle(color: Colors.red, fontSize: 12),
            contentPadding: EdgeInsets.symmetric( vertical: 0, horizontal: 22),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(27),
                borderSide: BorderSide(color: Color(0xffd9d0e3), width: 1)
            ),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(27),
                borderSide: BorderSide(color: Color(0xffd9d0e3), width: 1)
            ),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(27),
                borderSide: BorderSide(color: Color(0xffd9d0e3), width: 1)
            ),
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(minimumSize: const Size(double.infinity, 56),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12),
                    side: const BorderSide(color: Colors.transparent)),
                primary: Colors.transparent,
                elevation: 0),)
      ),
      initialRoute: SplashPage.ROUTE_NAME,
      onGenerateRoute: (setting) {
        Widget page;
        switch (setting.name) {
          case SplashPage.ROUTE_NAME:
            page = SplashPage();
            break;
          default:
            page = SplashPage();
        }
        return MaterialPageRoute(builder: (context) => page);
      },
    );
  }
}