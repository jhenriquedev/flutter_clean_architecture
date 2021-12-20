import 'package:dartz/dartz.dart';
import 'package:flutter_clean_achitecture/layers/data/datasources/get_cars_where_colors_datasource.dart';
import 'package:flutter_clean_achitecture/layers/data/dto/car_dto.dart';

class GetcarsWhereColorsLocalDatasourceImp
    implements GetCarsWhereColorsDatasource {
  //Poderia utilizar banco local, sharedPreferences ou a memoria apenas para testes
  final jsonRed = {
    'sign': 'abc-123',
    'numberOfDoors': 2,
    'finalPriceOfCar': 1000.00,
  };

  final jsonBlue = {
    'sign': 'jgh-183',
    'numberOfDoors': 4,
    'finalPriceOfCar': 2000.00,
  };

  final jsonAny = {
    'sign': 'ury-089',
    'numberOfDoors': 4,
    'finalPriceOfCar': 1500.00,
  };

  @override
  Either<Exception, CarDto> call(String color){
    try {
      if (color.contains('red')) return Right(CarDto.fromMap(jsonRed));

      if (color.contains('blue')) return Right(CarDto.fromMap(jsonBlue));

      return Right(CarDto.fromMap(jsonAny));
    } catch (e) {
      return Left(Exception('Error in datasource: $e'));
    }
  }
}
