import 'package:dartz/dartz.dart';
import 'package:flutter_clean_achitecture/layers/domain/entities/entities.dart';
import 'package:flutter_clean_achitecture/layers/domain/repositories/repositories.dart';
import 'save_favorite_car_usecase.dart';

class SaveFavoriteCarUsecaseImpl implements SaveFavoriteCarUsecase {
  final SaveFavoriteCarRepository _saveFavoriteCarRepository;

  SaveFavoriteCarUsecaseImpl(this._saveFavoriteCarRepository);

/*
  LÓGICA VÁLIDA E CORRETA
  @override
  Future<bool> call(CarEntity carEntity) async => await _saveFavoriteCarRepository(carEntity);
*/

//NOVA LÓGICA COM IMPLEMENTAÇÃO DIFERENTE
  @override
  Future<Either<Exception, bool>> call(CarEntity carEntity) async {
    carEntity.setNewPrice = 80000.00;
    return await _saveFavoriteCarRepository(carEntity);
  }
}
