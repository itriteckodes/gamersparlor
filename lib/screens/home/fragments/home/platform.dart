import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:gamersparlor/model/platform.dart';
import 'package:gamersparlor/model/tournament.dart';
import 'package:gamersparlor/values/colors.dart';

class PlatformCard extends StatefulWidget {
  PlatformCard({Key? key, required this.platform}) : super(key: key);
  Platform platform;

  @override
  State<PlatformCard> createState() => _PlatformCardState();
}

class _PlatformCardState extends State<PlatformCard> {
  String? imagePath;
  void initState() {
    super.initState;
    setimages();
  }

  setimages() {
    switch (widget.platform.title) {
      case "ps4":
        setState(() {
          imagePath = 'assets/images/playstation.png';
        });
        break;
      case "Xbox one":
        setState(() {
          imagePath = 'assets/images/xbox.png';
        });
        break;
      case "PC":
        setState(() {
          imagePath = 'assets/images/monitor.png';
        });
        break;
        case "Xbox Series S/X":
        setState(() {
          imagePath = 'assets/images/xbox-series.png';
        });
        break;
    }
  }

  @override
  Widget build(BuildContext context) {

    return ImageIcon(
      AssetImage(imagePath!= null?imagePath!:'assets/images/playstation.png'),
      color: WHITE,
    );
  }
}
