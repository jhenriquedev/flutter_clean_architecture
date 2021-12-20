import 'package:flutter_clean_achitecture/layers/data/repositories/cars/save_favorite_car_repository_impl.dart';
import 'package:flutter_clean_achitecture/layers/domain/entities/cars/car_entity.dart';
import 'package:flutter_clean_achitecture/layers/domain/repositories/repositories.dart';
import 'package:flutter_clean_achitecture/layers/domain/usecases/save_favorite_car/save_favorite_car_usecase.dart';
import 'package:flutter_clean_achitecture/layers/domain/usecases/save_favorite_car/save_favorite_car_usecase_impl.dart';
import 'package:flutter_test/flutter_test.dart';

/*
class SaveFavoriteCarRepositoryImpl implements SaveFavoriteCarRepository {
  @override
  Future<bool> call(CarEntity carEntity) async {
    return carEntity.sign != '' && carEntity.price > 0;
  }
}
*/

void main() {
  test('Espero que salve o carro com sucesso.', () async {
    SaveFavoriteCarUsecase usecase =
        SaveFavoriteCarUsecaseImpl(SaveFavoriteCarRepositoryImpl());

    var car = CarEntity(sign: 'DDD452', qtdDoors: 1, price: 10000.00);

    var result = await usecase(car);

    late bool resultExpect;
    result.fold(
      (l) => null,
      (success) => resultExpect = success,
    );

    expect(resultExpect, true);
  });

  test('Espero que não salve o carro se a placa for igual a vazio.', () async {
    SaveFavoriteCarUsecase usecase =
        SaveFavoriteCarUsecaseImpl(SaveFavoriteCarRepositoryImpl());

    var car = CarEntity(sign: '', qtdDoors: 1, price: 10000.00);

    var result = await usecase(car);

    late bool resultExpect;
    result.fold(
      (l) => null,
      (success) => resultExpect = success,
    );

    expect(resultExpect, false);
   });
}
