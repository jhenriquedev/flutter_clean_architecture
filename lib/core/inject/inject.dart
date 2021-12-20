import 'package:flutter_clean_achitecture/layers/data/datasources/get_cars_where_colors_datasource.dart';
import 'package:flutter_clean_achitecture/layers/data/datasources/local/get_cars_where_colors_local_datasource_imp.dart';
import 'package:flutter_clean_achitecture/layers/data/repositories/cars/get_cars_where_colors_repository_impl.dart';
import 'package:flutter_clean_achitecture/layers/data/repositories/cars/save_favorite_car_repository_impl.dart';
import 'package:flutter_clean_achitecture/layers/domain/repositories/cars/get_cars_where_colors_repository.dart';
import 'package:flutter_clean_achitecture/layers/domain/repositories/cars/save_favorite_car_repository.dart';
import 'package:flutter_clean_achitecture/layers/domain/usecases/get_cars_where_color/get_cars_where_colors_usecase.dart';
import 'package:flutter_clean_achitecture/layers/domain/usecases/get_cars_where_color/get_cars_where_colors_usecase_imp.dart';
import 'package:flutter_clean_achitecture/layers/domain/usecases/save_favorite_car/save_favorite_car_usecase.dart';
import 'package:flutter_clean_achitecture/layers/domain/usecases/save_favorite_car/save_favorite_car_usecase_impl.dart';
import 'package:flutter_clean_achitecture/layers/presentation/controllers/car_controller.dart';
import 'package:get_it/get_it.dart';

class Inject {
  static void init() {
    GetIt getIt = GetIt.instance;

    //core

    //datasources
    getIt.registerLazySingleton<GetCarsWhereColorsDatasource>(
      () => GetcarsWhereColorsLocalDatasourceImp(),
    );
    //repositories
    getIt.registerLazySingleton<GetCarsWhereColorsRepository>(
      () => GetCarsWhereColorsRepositoryImpl(getIt()),
    );
    getIt.registerLazySingleton<SaveFavoriteCarRepository>(
      () => SaveFavoriteCarRepositoryImpl(),
    );
    //usecases
    getIt.registerLazySingleton<GetCarsWhereColorsUsecase>(
      () => GetCarsWhereColorsUsecaseImp(getIt()),
    );
    getIt.registerLazySingleton<SaveFavoriteCarUsecase>(
      () => SaveFavoriteCarUsecaseImpl(getIt()),
    );
    //controllers
    getIt.registerFactory<CarController>(() => CarController(getIt(), getIt()));
  }
}
