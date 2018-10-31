import 'package:flutter/material.dart';
import 'package:orbs/model/planets.dart';
import 'package:orbs/ui/common/planet_summary.dart';
import 'package:orbs/ui/common/separator.dart';
import 'package:orbs/ui/text_style.dart';

class DetailPage extends StatelessWidget {
  final Planet planet;

  DetailPage(this.planet);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        color: Color(0xFF736AB7),
        child: Stack(
          children: <Widget>[
            _background,
            _gradient,
            _content,
            _toolbar(context),
          ],
        ),
      ),
    );
  }

  Container get _background {
    return Container(
      child: Image.network(
        planet.picture,
        fit: BoxFit.cover,
        height: 300.0,
      ),
      constraints: BoxConstraints.expand(height: 295.0),
    );
  }

  Container get _gradient {
    return Container(
      margin: EdgeInsets.only(top: 190.0),
      height: 110.0,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: <Color>[Color(0x00736AB7), Color(0xFF736AB7)],
          stops: [0.0, 0.9],
          begin: const FractionalOffset(0.0, 0.0),
          end: const FractionalOffset(0.0, 1.0),
        ),
      ),
    );
  }

  Container get _content {
    final _overviewTitle = "Overview".toUpperCase();
    return Container(
      child: ListView(
        padding: EdgeInsets.fromLTRB(0.0, 72.0, 0.0, 32.0),
        children: <Widget>[
          PlanetSummary(
            planet,
            horizontal: false,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 32.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  _overviewTitle,
                  style: Style.headerTextStyle,
                ),
                Separator(),
                Text(planet.description, style: Style.commonTextStyle),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container _toolbar(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
      child: BackButton(color: Colors.white),
    );
  }
}
