import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<String> nombres = <String>['marco', 'jose', 'lupe'];

    return Container(
        child: CustomScrollView(
          shrinkWrap: true,
          slivers: <Widget>[
            SliverPadding(
              padding: const EdgeInsets.all(50.0),
              sliver: SliverList(
                delegate: SliverChildListDelegate(
                  <Widget>[
                    const Text('I\'m dedicating every day to you'),
                    const Text('Domestic life was never quite my style'),
                    const Text('When you smile, you knock me out, I fall apart'),
                    const Text('And I thought I was so smart'),
                  ],
                ),
              ),
            ),
          ],
        )
        /*child: ListView(
        padding: const EdgeInsets.all(18),
        children: [
          for (var i = 0; i < nombres.length; i++)
            Center(
              child: Text(nombres[i]),
            ),
        ],
        addAutomaticKeepAlives: false,
      ),*/
        );
  }
}
