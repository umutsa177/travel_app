import 'package:flutter/widgets.dart';
import 'package:travel_app/utility/enums/image_enums.dart';
import 'package:travel_app/utility/extensions/image_extensions.dart';

class IconContainer extends StatelessWidget {
  const IconContainer({super.key});

  final double imageHeight = 58;
  final double imageWidth = 58;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const ShapeDecoration(
        shape: OvalBorder(),
      ),
      child: Image.asset(
        Images.profilePicture.toPath,
        width: imageWidth,
        height: imageHeight,
        fit: BoxFit.fill,
      ),
    );
  }
}
