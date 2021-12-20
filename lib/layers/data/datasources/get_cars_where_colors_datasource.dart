import 'package:dartz/dartz.dart';
import 'package:flutter_clean_achitecture/layers/data/dto/car_dto.dart';

abstract class GetCarsWhereColorsDatasource {
  Either<Exception, CarDto> call(String color);
}
