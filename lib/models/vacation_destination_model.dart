class VacationDestinationModel {
  final String destinationName;
  final String imageName;
  final double starRate;

  VacationDestinationModel(
      {required this.destinationName,
      required this.imageName,
      required this.starRate});

  String get imagePath => "assets/$imageName.png";

  static final List<VacationDestinationModel> vacationItems = [
    VacationDestinationModel(
        destinationName: "Bodrum", imageName: "bodrum", starRate: 4.3),
    VacationDestinationModel(
        destinationName: "Goa", imageName: "goa", starRate: 4.7),
    VacationDestinationModel(
        destinationName: "Mahe", imageName: "mahe", starRate: 5.0),
    VacationDestinationModel(
        destinationName: "Khalifa", imageName: "khalifa", starRate: 4.8),
    VacationDestinationModel(
        destinationName: "Phuket", imageName: "phuket", starRate: 4.5),
    VacationDestinationModel(
        destinationName: "Krabi", imageName: "krabi", starRate: 4.6),
  ];
}
