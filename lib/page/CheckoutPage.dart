import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_foot_delivery/page/CustomSwitch.dart';

class CheckoutPage extends StatefulWidget {
  @override
  CheckoutPageState createState() => CheckoutPageState();
}

class CheckoutPageState extends State<CheckoutPage> {
  bool status = false;
  int selected = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Checkout'),
          elevation: 1,
          shadowColor: Colors.black,
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                        child: Text('Payment method',
                            style: Theme.of(context).textTheme.headline5,
                            textAlign: TextAlign.left),
                        flex: 2),
                    Expanded(
                        child: Text('Change',
                            style: Theme.of(context).textTheme.button,
                            textAlign: TextAlign.right),
                        flex: 1),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 24),
                  child: Row(
                    children: [
                      Icon(Icons.credit_card_outlined,
                          color: Color(0xff2d0c57)),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text('**** **** **** 3737',
                            style: Theme.of(context).textTheme.subtitle1),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Row(
                    children: [
                      Expanded(
                          child: Text('Delivery address',
                              style: Theme.of(context).textTheme.headline5,
                              textAlign: TextAlign.left),
                          flex: 2),
                      Expanded(
                          child: Text('Change',
                              style: Theme.of(context).textTheme.button,
                              textAlign: TextAlign.right),
                          flex: 1),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 24),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(Icons.home_outlined, color: Color(0xff2d0c57)),
                      Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text(
                              'Alexandra Smith Cesu \n31 k-2 5.st, SIA \nChili\nRiga\nLV–1012\nLatvia',
                              style: Theme.of(context).textTheme.subtitle1))
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Row(
                    children: [
                      Expanded(
                          child: Text('Delivery options',
                              style: Theme.of(context).textTheme.headline5,
                              textAlign: TextAlign.left),
                          flex: 2),
                      Expanded(
                          child: Text('Change',
                              style: Theme.of(context).textTheme.button,
                              textAlign: TextAlign.right),
                          flex: 1),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20),
                    height: 200,
                    child: ListView.builder(
                        itemBuilder: (context, index) {
                          return Container(
                            margin: EdgeInsets.only(top: 20),
                            child: InkResponse(
                              child: Row(
                                children: [
                                  Icon(Icons.person_outline,
                                      color: selected == index
                                          ? Color(0xff7203ff)
                                          : Color(0xff2d0c57)),
                                  Text('I’ll pick it up myself',
                                      style: Theme.of(context)
                                          .textTheme
                                          .subtitle1
                                          ?.copyWith(
                                              color: selected == index
                                                  ? Color(0xff7203ff)
                                                  : Color(0xff2d0c57),
                                              fontSize: 16)),
                                  Spacer(),
                                  selected == index
                                      ? Icon(Icons.close,
                                          color: Color(0xff7203ff))
                                      : Container()
                                ],
                              ),
                              onTap: () {
                                setState(() {
                                  selected = index;
                                });
                              },
                            ),
                          );
                        },
                        itemCount: 10)),
                Padding(
                  padding: const EdgeInsets.only(top: 20, bottom: 20),
                  child: Row(
                    children: [
                      Expanded(
                          child: Text(
                        'Non - contact - delivery',
                        style: Theme.of(context).textTheme.headline5,
                      )),
                      Spacer(),
                      CustomSwitch(
                          value: status,
                          onChanged: (value) {
                            setState(() {
                              status = value;
                            });
                          },
                          activeColor: Color(0xffe2cbff))
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
