import 'package:flutter/material.dart';
import 'package:travel_app/utility/extensions/image_extensions.dart';

import '../../utility/enums/image_enums.dart';

class SmallProfileContainer extends StatelessWidget {
  const SmallProfileContainer({
    super.key,
  });

  final double _width = 58;
  final double _height = 58;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const ShapeDecoration(
        shape: OvalBorder(),
      ),
      child: Image.asset(
        Images.profilePicture.toPath,
        width: _width,
        height: _height,
        fit: BoxFit.fill,
      ),
    );
  }
}
