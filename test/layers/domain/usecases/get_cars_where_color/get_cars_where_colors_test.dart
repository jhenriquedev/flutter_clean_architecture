import 'package:flutter_clean_achitecture/layers/data/datasources/get_cars_where_colors_datasource.dart';
import 'package:flutter_clean_achitecture/layers/data/datasources/local/get_cars_where_colors_local_datasource_imp.dart';
import 'package:flutter_clean_achitecture/layers/data/repositories/cars/get_cars_where_colors_repository_impl.dart';
import 'package:flutter_clean_achitecture/layers/domain/entities/entities.dart';
import 'package:flutter_clean_achitecture/layers/domain/repositories/repositories.dart';
import 'package:flutter_clean_achitecture/layers/domain/usecases/get_cars_where_color/get_cars_where_colors_usecase.dart';
import 'package:flutter_clean_achitecture/layers/domain/usecases/get_cars_where_color/get_cars_where_colors_usecase_imp.dart';
import 'package:flutter_test/flutter_test.dart';

/*
class GetCarsWhereColorRepositoryImp implements GetCarsWhereColorsRepository{
  @override
  CarEntity call(String color) {
    if (color.contains('red')) {
      return CarEntity(sign: 'ABD123', qtdDoors: 4, price: 50000.00);
    }

    return CarEntity(sign: 'GHT789', qtdDoors: 2, price: 20000.00);
  }

}

*/

main() {
  GetCarsWhereColorsDatasource dataSource =
      GetcarsWhereColorsLocalDatasourceImp();

  GetCarsWhereColorsUsecase usecase = GetCarsWhereColorsUsecaseImp(
      GetCarsWhereColorsRepositoryImpl(dataSource));

  test('Deve retornar uma instancia de carro quando passado qualquer cor', () {
    var result = usecase('any');

    //Verifica se é uma instancia de CarEntity
    expect(result, isInstanceOf<CarEntity>());
  });

  test('Deve retornar um carro de 2 portas quando a cor não for vermelho', () {
    var result = usecase('blue');

    late CarEntity expectFold;

    result.fold(
      (error) => null,
      (success) => expectFold = success,
    );

    //Verifica se é uma instancia de CarEntity
    expect(expectFold.qtdDoors, 4);
  });

  test('Deve retornar um carro de 4 portas quando a cor for vermelho', () {
    var result = usecase('red');

     late CarEntity expectFold;

    result.fold(
      (error) => null,
      (success) => expectFold = success,
    );

    //Verifica se é uma instancia de CarEntity
    expect(expectFold.qtdDoors, 2);
  });
}
