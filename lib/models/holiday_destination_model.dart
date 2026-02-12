class HolidayDestinationModel {
  final String destinationName;
  final String imageName;

  HolidayDestinationModel({required this.destinationName, required this.imageName});

  String get imagePath => "assets/$imageName.png";
}
