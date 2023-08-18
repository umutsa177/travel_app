import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_app/models/holiday_destination_model.dart';

class HomeCubit extends Cubit<HomeStates> {
  HomeCubit() : super(HomeLoading());
  late List<HolidayDestinationModel> _allItems;

  Future<void> fetchItems() async {
    await Future.delayed(const Duration(seconds: 1));
    _allItems = HolidayDestinationModel.holidayItems;
    emit(HomeItemsLoaded(_allItems));
  }

  void searchByItems(String data) {
    final result = _allItems
        .where((element) => element.destinationName.contains(data))
        .toList();
    emit(HomeItemsLoaded(result));
  }
}

abstract class HomeStates {}

class HomeLoading extends HomeStates {}

class HomeItemsLoaded extends HomeStates {
  final List<HolidayDestinationModel> items;

  HomeItemsLoaded(this.items);
}
