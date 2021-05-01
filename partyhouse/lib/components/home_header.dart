import 'package:partyhouse/components/style_button.dart';
import 'package:partyhouse/provider/doge_provider.dart';
import 'package:partyhouse/resources/palette.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Your feed',
          style: TextStyle(color: Palette.lightWhite),
        ),
        Spacer(),
        StyleButton(
          onTap: () {
            Provider.of<DogeProvider>(context, listen: false).channel.sink.close();
            Provider.of<DogeProvider>(context, listen: false).connectWS();
          },
          width: 150,
          height: 40,
          child: Center(
            child: Text(
              'New Room',
              style: TextStyle(color: Colors.white, fontSize: 15),
            ),
          ),
        ),
      ],
    );
  }
}
