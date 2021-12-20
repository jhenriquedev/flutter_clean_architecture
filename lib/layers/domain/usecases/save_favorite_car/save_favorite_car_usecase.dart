import 'package:dartz/dartz.dart';
import 'package:flutter_clean_achitecture/layers/domain/entities/entities.dart';

abstract class SaveFavoriteCarUsecase {
  //Future<bool> call(CarEntity carEntity);
  Future<Either<Exception, bool>> call(CarEntity carEntity);
}
