import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CategoryDetailWidget extends StatefulWidget {
  @override
  CategoryDetailWidgetPage createState() => CategoryDetailWidgetPage();
}

class CategoryDetailWidgetPage extends State<CategoryDetailWidget> {
  List<Tab> list = [
    Tab('Сabbage and lettuce (8)', false),
    Tab(
      'Сucumbers and tomatoes (8)',
      false,
    ),
    Tab('Oinons and garlic (8)', false),
    Tab('Peppers (8)', false),
    Tab('Potatoes and carrots (8)', false),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      child: ListView.separated(
          separatorBuilder: (context, index) {
            return InkResponse(
              child: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(24)),
                      color: list[index].selected
                          ? Color(0xffd0b3ff)
                          : Colors.white),
                  child: Row(
                    children: [
                      list[index].selected
                          ? Icon(Icons.close, color: Color(0xff7203ff))
                          : Container(),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          list[index].title,
                          style: Theme.of(context)
                              .textTheme
                              .subtitle1
                              ?.copyWith(
                                  color: list[index].selected
                                      ? Color(0xff7203ff)
                                      : Color(0xff2d0c57)),
                        ),
                      ),
                    ],
                  )),
              onTap: () {
                setState(() {
                  list[index].selected = !list[index].selected;
                });
              },
            );
          },
          itemCount: list.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) {
            return SizedBox(width: 10);
          }),
    );
  }
}

class Tab {
  String title;
  bool selected;

  Tab(this.title, this.selected);
}
