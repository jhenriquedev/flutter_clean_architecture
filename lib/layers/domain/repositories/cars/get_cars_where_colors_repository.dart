import 'package:dartz/dartz.dart';
import 'package:flutter_clean_achitecture/layers/domain/entities/entities.dart';

abstract class GetCarsWhereColorsRepository {
  //CarEntity call(String color);
  Either<Exception, CarEntity> call(String color);
}
