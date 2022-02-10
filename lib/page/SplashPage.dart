import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_foot_delivery/gen/asset_gen.dart';

import 'BottomNavPage.dart';

class SplashPage extends StatefulWidget {
  static const ROUTE_NAME = 'SplashPage';

  @override
  SplashPageState createState() => SplashPageState();
}

class SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        decoration: BoxDecoration(
            color: Color(0xffa259ff),
            image: DecorationImage(
                image: AssetImage(Assets.splash.splashbackground.path),
                fit: BoxFit.cover)),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(20, 30, 0, 0),
                height: 300,
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Image.asset(Assets.splash.splashlogo.path),
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                child: Container(
                  width: double.infinity,
                  color: Color(0xfff6f5f5),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 64,
                      ),
                      Image.asset(Assets.splash.splashicon.path),
                      SizedBox(
                        height: 24,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 40, right: 40),
                        child: Center(
                          child: Text(
                            'Non-Contact Deliveries',
                            style: Theme.of(context).textTheme.headline4,
                            maxLines: 2,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 20, top: 10, right: 20),
                        child: Center(
                          child: Text(
                            'When placing an order, select the option “Contactless delivery” and the courier will leave your order at the door.',
                            style: Theme.of(context).textTheme.bodyText1,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20, top: 20, right: 20),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).push(CupertinoPageRoute(builder: (context) => BottomNavPage()));
                          },
                          child: Text(
                            'Order Now',
                            style: Theme.of(context)
                                .textTheme
                                .bodyText1
                                ?.copyWith(color: Colors.white),
                          ),
                          style: ElevatedButton.styleFrom(
                              primary: Color(0xff0bce83),
                              elevation: 0),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 20, top: 20, right: 20),
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            'Dismiss',
                            style: Theme.of(context).textTheme.bodyText1,
                          ),
                          style: ElevatedButton.styleFrom(
                              primary: Colors.white, elevation: 0),
                        ),
                      ),
                      SizedBox(height: 53)
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
