import 'package:flutter_clean_achitecture/layers/domain/entities/cars/car_entity.dart';

class CarDto extends CarEntity {
  String sign;
  int numberOfDoors;
  double finalPriceOfCar;

  CarDto({
    required this.sign,
    required this.numberOfDoors,
    required this.finalPriceOfCar,
  }) : super(
          sign: sign,
          qtdDoors: numberOfDoors,
          price: finalPriceOfCar,
        );

  //codifica para Json
  Map toMap() {
    return {
      'sign': this.sign,
      'numberOfDoors': this.numberOfDoors,
      'finalPriceOfCar': this.finalPriceOfCar,
    };
  }

  //decodifica de Json
  static fromMap(Map map) {
    return CarDto(
      sign: map['sign'] as String,
      numberOfDoors: map['numberOfDoors'] as int,
      finalPriceOfCar: map['finalPriceOfCar'] as double,
    );
  }
}
