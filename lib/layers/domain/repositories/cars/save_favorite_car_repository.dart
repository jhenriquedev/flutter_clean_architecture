import 'package:dartz/dartz.dart';
import 'package:flutter_clean_achitecture/layers/domain/entities/entities.dart';


//para repository no domain não existe implementação
abstract class SaveFavoriteCarRepository {
  Future<Either<Exception, bool>> call(CarEntity carEntity);
}
