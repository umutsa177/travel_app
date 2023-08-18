class NaturalDestinationModel {
  final String destinationName;
  final String imageName;
  final double price;

  NaturalDestinationModel(
      {required this.destinationName,
      required this.imageName,
      required this.price});

  String get imagePath => "assets/$imageName.png";

  static final List<NaturalDestinationModel> naturalItems = [
    NaturalDestinationModel(
        destinationName: "Nicobar Tour",
        imageName: "nicobarTour",
        price: 45.000),
    NaturalDestinationModel(
        destinationName: "Tokyo", imageName: "tokyo", price: 60.000),
    NaturalDestinationModel(
        destinationName: "Rome", imageName: "rome", price: 50.000),
  ];
}
