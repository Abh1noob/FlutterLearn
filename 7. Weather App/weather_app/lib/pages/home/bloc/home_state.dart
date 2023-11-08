part of 'home_bloc.dart';

@immutable
abstract class HomeState {}

abstract class HomeActionState extends HomeState {}

final class HomeInitial extends HomeState {}

final class GetRequestState extends HomeState {
  final Weather weatherData;
  GetRequestState({required this.weatherData});
}

final class LoadingState extends HomeState{}

final class FetchingError extends HomeActionState{}