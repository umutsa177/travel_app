class HolidayDestinationModel {
  final String destinationName;
  final String imageName;

  HolidayDestinationModel(
      {required this.destinationName, required this.imageName});

  String get imagePath => "assets/$imageName.png";

  static final List<HolidayDestinationModel> holidayItems = [
    HolidayDestinationModel(destinationName: "Maldives", imageName: "maldives"),
    HolidayDestinationModel(
        destinationName: "Sri Lanka", imageName: "sriLanka"),
    HolidayDestinationModel(destinationName: "Paris", imageName: "paris"),
    HolidayDestinationModel(
        destinationName: "Switzerland", imageName: "switzerland"),
  ];
}
