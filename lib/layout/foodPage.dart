import 'package:flutter/material.dart';
import 'package:maga/models/Product_Data.dart';
import 'package:maga/shared/compones/widgets/Banner_widget.dart';
import 'package:maga/shared/compones/widgets/Search_Box_widget.dart';
import 'package:maga/shared/compones/widgets/GridleWidget.dart';
import 'package:maga/shared/compones/widgets/ProductWidget.dart';
import 'package:maga/shared/compones/widgets/filter_icon.dart';

class FoodPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        body: DefaultTabController(
          length: 5,
          child: NestedScrollView(
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) {
              return <Widget>[
                SliverAppBar(
                  expandedHeight: 240.0,
                  backgroundColor: Colors.white,
                  floating: true,
                  pinned: false,
                  flexibleSpace: FlexibleSpaceBar(
                    background: Column(
                      children: [
                        Row(
                          children: [
                            Search_Box_widget(
                              width: 280,
                            ),
                            FilterIcon(),
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Banner_widget(),
                      ],
                    ),
                  ),
                ),
                SliverPersistentHeader(
                  delegate: _SliverAppBarDelegate(
                    TabBar(
                      labelStyle: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                      isScrollable: true,
                      labelColor: Color(0xffFC6C26),
                      unselectedLabelColor: Colors.black,
                      indicatorWeight: 2,
                      indicatorSize: TabBarIndicatorSize.label,
                      indicatorColor: Color(0xffFC6C26),
                      unselectedLabelStyle: TextStyle(fontSize: 14),
                      tabs: [
                        Tab(
                          child: Text('Burger'),
                        ),
                        Tab(
                          child: Text('Pizza'),
                        ),
                        Tab(
                          child: Text('Sushi'),
                        ),
                        Tab(
                          child: Text('Steak'),
                        ),
                        Tab(
                          child: Text('Pasta'),
                        ),
                      ],
                    ),
                  ),
                  pinned: true,
                ),
              ];
            },
            body: Expanded(
              child: TabBarView(
                children: [
                  GridleWidget(
                    itemCount: burger.length,
                    itemBuilder: (context, index) {
                      return ProductWidget(
                        item: burger[index],
                      );
                    },
                  ),
                  GridleWidget(
                    itemCount: pizza.length,
                    itemBuilder: (context, index) {
                      return ProductWidget(
                        item: pizza[index],
                      );
                    },
                  ),
                  GridleWidget(
                    itemCount: sushi.length,
                    itemBuilder: (context, index) {
                      return ProductWidget(
                        item: sushi[index],
                      );
                    },
                  ),
                  GridleWidget(
                    itemCount: steak.length,
                    itemBuilder: (context, index) {
                      return ProductWidget(
                        item: steak[index],
                      );
                    },
                  ),
                  GridleWidget(
                    itemCount: pasta.length,
                    itemBuilder: (context, index) {
                      return ProductWidget(
                        item: pasta[index],
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate(this._tabBar);

  final TabBar _tabBar;

  @override
  double get minExtent => _tabBar.preferredSize.height;
  @override
  double get maxExtent => _tabBar.preferredSize.height;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return new Container(
      color: Colors.white,
      child: _tabBar,
    );
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return false;
  }
}
