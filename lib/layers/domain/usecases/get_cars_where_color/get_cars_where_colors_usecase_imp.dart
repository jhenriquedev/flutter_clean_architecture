import 'package:dartz/dartz.dart';
import 'package:flutter_clean_achitecture/layers/domain/entities/entities.dart';
import 'package:flutter_clean_achitecture/layers/domain/repositories/repositories.dart';
import './get_cars_where_colors_usecase.dart';

//Implementação do contrato do usecase
//Não existe importação de API
//Executa somente lógicas referentes a entidade e repository

class GetCarsWhereColorsUsecaseImp implements GetCarsWhereColorsUsecase {
  final GetCarsWhereColorsRepository _carsWhereColorsRepository;
  GetCarsWhereColorsUsecaseImp(this._carsWhereColorsRepository);

  @override
  Either<Exception, CarEntity> call(String color) {
    return _carsWhereColorsRepository(color);
  }
  /*
  CarEntity call(String color) {
    return _carsWhereColorsRepository(color);
  }
  */

/*
  @override
  CarEntity call(String color) {
    if (color.contains('red')) {
      return CarEntity(sign: 'ABD123', qtdDoors: 4, price: 50000.00);
    }

    return CarEntity(sign: 'GHT789', qtdDoors: 2, price: 20000.00);
  }
*/
}
