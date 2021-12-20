import 'package:dartz/dartz.dart';
import 'package:flutter_clean_achitecture/layers/domain/entities/entities.dart';
import 'package:flutter_clean_achitecture/layers/domain/repositories/repositories.dart';

class SaveFavoriteCarRepositoryImpl implements SaveFavoriteCarRepository {
  @override
  Future<Either<Exception, bool>> call(CarEntity carEntity) async {
    try {
      return Right(carEntity.sign != '' && carEntity.price > 0);
    } catch (e) {
      return Left(Exception('repository error: $e'));
    }
  }
}
