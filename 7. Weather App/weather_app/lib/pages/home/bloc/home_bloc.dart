import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:weather_app/pages/home/requests/getweather.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitial()) {
    on<GetRequestFetchEvent>(getRequestFetchEvent);
  }

  FutureOr<void> getRequestFetchEvent(
      GetRequestFetchEvent event, Emitter<HomeState> emit) async {
    emit(LoadingState());
    try {
      Weather temp = await getWeather(event.city);
      emit(GetRequestState(weatherData: temp));
    } catch (e) {
      emit(FetchingError());
      print(e);
    }
  }
}
