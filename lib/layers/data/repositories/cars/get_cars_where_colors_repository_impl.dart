import 'package:dartz/dartz.dart';
import 'package:flutter_clean_achitecture/layers/data/datasources/get_cars_where_colors_datasource.dart';
import 'package:flutter_clean_achitecture/layers/domain/entities/entities.dart';
import 'package:flutter_clean_achitecture/layers/domain/repositories/repositories.dart';

class GetCarsWhereColorsRepositoryImpl implements GetCarsWhereColorsRepository {
  final GetCarsWhereColorsDatasource _getCarsWhereColorsDatasource;

  GetCarsWhereColorsRepositoryImpl(this._getCarsWhereColorsDatasource);

  @override
  Either<Exception, CarEntity> call(String color) {
    //chamamos a api e responde um map
    return _getCarsWhereColorsDatasource(color);
  }
}