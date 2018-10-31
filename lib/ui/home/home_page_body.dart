import 'package:flutter/material.dart';
import 'package:orbs/model/planets.dart';
import 'package:orbs/ui/common/planet_summary.dart';

//class HomePageBody extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return Expanded(
//      child: Container(
//        color: Color(0xFF736AB7),
//        child: CustomScrollView(
//          scrollDirection: Axis.vertical,
//          shrinkWrap: false,
//          slivers: <Widget>[
//            SliverPadding(
//              padding: const EdgeInsets.symmetric(vertical: 24.0),
//              sliver: SliverList(
//                delegate: SliverChildBuilderDelegate(
//                  (context, index) => PlanetSummary(planets[index]),
//                  childCount: planets.length,
//                ),
//              ),
//            ),
//          ],
//        ),
//      ),
//    );
//  }
//}

class HomePageBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          itemBuilder: (context, index) => PlanetSummary(planets[index]),
          itemCount: planets.length,
          padding: EdgeInsets.symmetric(vertical: 16.0)
      ),
    );
  }
}