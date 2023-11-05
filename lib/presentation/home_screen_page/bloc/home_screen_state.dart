// ignore_for_file: must_be_immutable

part of 'home_screen_bloc.dart';

/// Represents the state of HomeScreen in the application.
class HomeScreenState extends Equatable {
  HomeScreenState({
    this.searchController,
    this.homeScreenModelObj,
  });

  TextEditingController? searchController;

  HomeScreenModel? homeScreenModelObj;

  @override
  List<Object?> get props => [
        searchController,
        homeScreenModelObj,
      ];
  HomeScreenState copyWith({
    TextEditingController? searchController,
    HomeScreenModel? homeScreenModelObj,
  }) {
    return HomeScreenState(
      searchController: searchController ?? this.searchController,
      homeScreenModelObj: homeScreenModelObj ?? this.homeScreenModelObj,
    );
  }
}
