import 'package:flutter_clean_achitecture/layers/data/datasources/get_cars_where_colors_datasource.dart';
import 'package:flutter_clean_achitecture/layers/data/datasources/local/get_cars_where_colors_local_datasource_imp.dart';
import 'package:flutter_clean_achitecture/layers/data/repositories/cars/get_cars_where_colors_repository_impl.dart';
import 'package:flutter_clean_achitecture/layers/domain/repositories/repositories.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  GetCarsWhereColorsDatasource dataSource=
      GetcarsWhereColorsLocalDatasourceImp();

  GetCarsWhereColorsRepository repository = GetCarsWhereColorsRepositoryImpl(dataSource);

  test('Devolva um carro independente da cor', () {
    var result = repository('qualquer');

    expect(result, isNotNull);
  });
}
