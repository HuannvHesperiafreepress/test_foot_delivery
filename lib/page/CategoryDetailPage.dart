import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_foot_delivery/gen/asset_gen.dart';

import 'CategoryDetailWidget.dart';

class CategoryDetailPage extends StatefulWidget {
  @override
  CategoryDetailPageState createState() => CategoryDetailPageState();
}

class CategoryDetailPageState extends State<CategoryDetailPage> {
  late ScrollController scrollController;
  double? offset;

  @override
  void initState() {
    super.initState();
    scrollController = ScrollController();
    scrollController.addListener(() {
      print('offset: ' + offset.toString());
      setState(() {
        offset = scrollController.offset;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        controller: scrollController,
        physics: BouncingScrollPhysics(),
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverOverlapAbsorber(
              handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
              sliver: SliverSafeArea(
                top: false,
                sliver: SliverAppBar(
                  expandedHeight: 180,
                  floating: false,
                  pinned: true,
                  flexibleSpace: FlexibleSpaceBar.createSettings(
                    currentExtent: 10,
                    child: FlexibleSpaceBar(
                      centerTitle: true,
                      titlePadding: EdgeInsets.only(top: 5, bottom: 5),
                      title: Stack(
                        children: [
                          Align(
                              alignment: Alignment.topRight,
                              child: Image.asset(
                                  Assets.categorydetail.vegetable.path)),
                          AnimatedPadding(
                            padding: EdgeInsets.only(
                              top: offset == null ? 70 : (70 - offset! * 0.32),
                              left: offset == null ? 30 : (30 + offset! * 0.2),
                            ),
                            duration: const Duration(milliseconds: 1),
                            curve: Curves.fastOutSlowIn,
                          ),
                          AnimatedPadding(
                            padding: EdgeInsets.only(
                              left: offset == null ? 0 : (offset! * 1.25),
                              top:
                                  offset == null ? 120 : (120 - offset! * 0.65),
                            ),
                            duration: const Duration(microseconds: 1),
                            curve: Curves.fastOutSlowIn,
                            child: AnimatedContainer(
                              width: offset == null
                                  ? MediaQuery.of(context).size.width
                                  : (MediaQuery.of(context).size.width -
                                      offset! * 0.5),
                              duration: Duration(seconds: 1),
                              curve: Curves.fastOutSlowIn,
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: TextField(
                                decoration: InputDecoration(
                                  prefixIcon: Padding(
                                    padding:
                                        EdgeInsets.only(left: 25, right: 21),
                                    child: Icon(
                                      Icons.search,
                                      color: Colors.black,
                                      size: 22,
                                    ),
                                  ),
                                  hintText: 'Search',
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ];
        },
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CategoryDetailWidget(),
              Expanded(
                  child: ListView.separated(
                      physics: NeverScrollableScrollPhysics(),
                      padding: EdgeInsets.all(0),
                      itemBuilder: (context, index) {
                        return Container(
                          padding: EdgeInsets.only(right: 17),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset(
                                  Assets.categorydetail.categorydetail.path,
                                  width:
                                      MediaQuery.of(context).size.width * 0.45,
                                  height: MediaQuery.of(context).size.height *
                                      0.17),
                              SizedBox(width: 10),
                              Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.37,
                                  height:
                                      MediaQuery.of(context).size.height * 0.17,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Text('Boston Lettuce',
                                          style: Theme.of(context)
                                              .textTheme
                                              .headline6),
                                      SizedBox(height: 10),
                                      Container(
                                          child: Row(
                                        children: [
                                          Text('1.10',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .subtitle1),
                                          SizedBox(width: 2),
                                          Text('€ / piece',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .subtitle1),
                                        ],
                                      )),
                                      SizedBox(height: 10),
                                      Container(
                                        height: 40,
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Expanded(child: ElevatedButton(
                                                onPressed: () {},
                                                child:
                                                Icon(Icons.favorite_border),
                                                style: ElevatedButton.styleFrom(
                                                    primary: Colors.white,
                                                    elevation: 0,
                                                    shape: RoundedRectangleBorder(
                                                        borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(
                                                                6)),
                                                        side: BorderSide(
                                                            width: 1,
                                                            color: Color(
                                                                0xffd9d0e3)))),
                                              )),
                                              
                                              SizedBox(width: 5),
                                              Expanded(child: ElevatedButton(
                                                onPressed: () {},
                                                child: Icon(
                                                    Icons.add_shopping_cart),
                                                style: ElevatedButton.styleFrom(
                                                    primary: Color(0xff0bce83),
                                                    elevation: 0,
                                                    shape: RoundedRectangleBorder(
                                                        borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(
                                                                6)),
                                                        side: BorderSide(
                                                            width: 1,
                                                            color: Color(
                                                                0xffd9d0e3)))),
                                              ))
                                            ]),
                                      )
                                    ],
                                  ))
                            ],
                          ),
                        );
                      },
                      separatorBuilder: (context, index) {
                        return SizedBox(height: 40);
                      },
                      itemCount: 20))
            ],
          ),
        ),
      ),
    );
  }
}
