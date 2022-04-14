import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_foot_delivery/gen/asset_gen.dart';
import 'package:test_foot_delivery/page/ItemCategory.dart';

class CategoriesPage extends StatefulWidget {
  @override
  CategoriesPageState createState() => CategoriesPageState();
}

class CategoriesPageState extends State<CategoriesPage> {
  late ScrollController scrollController;
  double? offset;

  @override
  void initState() {
    super.initState();
    scrollController = ScrollController();
    scrollController.addListener(() {
      setState(() {
        offset = scrollController.offset;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        // NestedScrollView : scroll view có thế được lồng vào các scroll View khác
        child: NestedScrollView(
          physics: BouncingScrollPhysics(),
          // headerSliverBuilder: hiển thị các thành phần bên ngoài cuộn, khi cuộn sẽ không bị mất đi
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              // SliverOverlapAbsorber:
              SliverOverlapAbsorber(
                handle:
                    NestedScrollView.sliverOverlapAbsorberHandleFor(context),
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
                                top:
                                    offset == null ? 70 : (70 - offset! * 0.32),
                                left:
                                    offset == null ? 30 : (30 + offset! * 0.2),
                              ),
                              duration: const Duration(milliseconds: 1),
                              curve: Curves.fastOutSlowIn,
                              child: Container(
                                  height: 90,
                                  child: AnimatedDefaultTextStyle(
                                      child: Text(
                                        'Categories',
                                      ),
                                      style: TextStyle(
                                          fontSize: offset == null
                                              ? 28
                                              : (28 - offset! * 0.05),
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black),
                                      duration: Duration(milliseconds: 400))),
                            ),
                            AnimatedPadding(
                              padding: EdgeInsets.only(
                                left: offset == null ? 0 : (offset! * 1.25),
                                top: offset == null
                                    ? 120
                                    : (120 - offset! * 0.65),
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
                Container(),
                SizedBox(height: 20),
                Expanded(child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: MediaQuery.of(context).size.width*1.45/(MediaQuery.of(context).size.height),
                      // crossAxisCount: số cột hiển thị
                        crossAxisCount: 2,
                        // mainAxisSpacing: khoảng cách giữa các hàng (giữa các item trong cột dọc
                        mainAxisSpacing: 20,
                        // crossAxisSpacing: khoảng các giữa item trong một hàng ngang
                        crossAxisSpacing: 20
                    ),
                    itemBuilder: (context, index) {
                      return ItemCategory(Assets.category.media.path, 'Vegetables', '20');
                    },
                    itemCount: 20))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
