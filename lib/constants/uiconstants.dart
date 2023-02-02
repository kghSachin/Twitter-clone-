import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:twitterkoclone/constants/assets_constants.dart';
import 'package:twitterkoclone/theme/pallet.dart';

class UIConstants {
  static AppBar appBar() {
    return AppBar(
      title: SvgPicture.asset(
        AssetsConstants.twitterLogo,
        color: Pallete.blueColor,
        height: 30,
      ),
      centerTitle: true,
    );
  }
}
