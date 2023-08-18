import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_app/models/vacation_destination_model.dart';

class ListingCubit extends Cubit<ListingStates> {
  ListingCubit() : super(ListingLoading());
  late List<VacationDestinationModel> _allItems;

  Future<void> fetchItems() async {
    await Future.delayed(const Duration(seconds: 1));
    _allItems = VacationDestinationModel.vacationItems;
    emit(ListingItemsLoaded(_allItems));
  }

  void searchByItems(String data) {
    final result = _allItems
        .where((element) => element.destinationName.contains(data))
        .toList();
    emit(ListingItemsLoaded(result));
  }
}

abstract class ListingStates {}

class ListingLoading extends ListingStates {}

class ListingItemsLoaded extends ListingStates {
  final List<VacationDestinationModel> items;

  ListingItemsLoaded(this.items);
}
