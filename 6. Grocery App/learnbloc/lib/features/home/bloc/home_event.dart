part of 'home_bloc.dart';

@immutable
sealed class HomeEvent {}

class HomeProductWishlistButtonClickEvent extends HomeEvent {
  final Map<String, dynamic> product;
  HomeProductWishlistButtonClickEvent({required this.product});
}

class HomeProductCartButtonClickEvent extends HomeEvent {
  final Map<String, dynamic> product;
  HomeProductCartButtonClickEvent({required this.product});
}

class HomeCartButtonNavigateEvent extends HomeEvent {}

class HomeWishlistButtonNavigateEvent extends HomeEvent {}