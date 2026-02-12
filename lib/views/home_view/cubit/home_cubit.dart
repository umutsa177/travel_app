import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_app/models/holiday_destination_model.dart';

class HomeCubit extends Cubit<HomeStates> {
  HomeCubit() : super(HomeLoading());
  late List<HolidayDestinationModel> _allItems;
  final List<HolidayDestinationModel> holidayItems = [
    HolidayDestinationModel(destinationName: "Maldives", imageName: "maldives"),
    HolidayDestinationModel(destinationName: "Sri Lanka", imageName: "sriLanka"),
    HolidayDestinationModel(destinationName: "Paris", imageName: "paris"),
    HolidayDestinationModel(destinationName: "Switzerland", imageName: "switzerland"),
  ];
  Future<void> fetchItems() async {
    await Future.delayed(const Duration(seconds: 1));
    _allItems = holidayItems;
    emit(HomeItemsLoaded(_allItems));
  }

  void searchByItems(String data) {
    final result = _allItems.where((element) => element.destinationName.contains(data)).toList();
    emit(HomeItemsLoaded(result));
  }
}

abstract class HomeStates {}

class HomeLoading extends HomeStates {}

class HomeItemsLoaded extends HomeStates {
  final List<HolidayDestinationModel> items;

  HomeItemsLoaded(this.items);
}
