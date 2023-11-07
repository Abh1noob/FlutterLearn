part of 'home_bloc.dart';

@immutable
abstract class HomeEvent {}

final class GetRequestFetchEvent extends HomeEvent {
  final String city;
  GetRequestFetchEvent(this.city);
}
