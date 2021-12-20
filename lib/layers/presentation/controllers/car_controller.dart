import 'package:flutter_clean_achitecture/layers/domain/entities/entities.dart';
import 'package:flutter_clean_achitecture/layers/domain/usecases/get_cars_where_color/get_cars_where_colors_usecase.dart';
import 'package:flutter_clean_achitecture/layers/domain/usecases/save_favorite_car/save_favorite_car_usecase.dart';

class CarController {
  final GetCarsWhereColorsUsecase _getCarsWhereColorsUsecase;
  final SaveFavoriteCarUsecase _saveFavoriteCarUsecase;

  CarController(
    this._getCarsWhereColorsUsecase,
    this._saveFavoriteCarUsecase,
  ) {
    getCarsWhereColor('red');
  }

  late CarEntity car;

  getCarsWhereColor(String color) {
    var result = _getCarsWhereColorsUsecase(color);
    result.fold(
      (error) => print(error.toString()), //poderia ser uma snackbar
      (success) => car = success,
    );
  }

  saveFavoriteCar(CarEntity car) async {
    var result = await _saveFavoriteCarUsecase(car);
  }
}
