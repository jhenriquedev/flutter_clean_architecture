import 'package:dartz/dartz.dart';
import 'package:flutter_clean_achitecture/layers/domain/entities/entities.dart';

//Contrato
abstract class GetCarsWhereColorsUsecase {
  //CarEntity call(String color);
  Either<Exception, CarEntity> call(String color);
}
