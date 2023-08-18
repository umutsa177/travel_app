import '../enums/image_enums.dart';

extension ImageExtension on Images {
  String get toPath => "assets/$name.png";
}
