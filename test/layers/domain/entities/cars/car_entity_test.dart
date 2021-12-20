import 'package:flutter_clean_achitecture/layers/domain/entities/entities.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  //CarEntity carEntity = CarEntity(sign: 'GHT789', qtdDoors: 2, price: 20000.00);

  /*
  test('Should', () {
    var a = 10;
    expect(a, 10);
  });
  */

  test('Espero que a entidade não seja nula', () {
    CarEntity carEntity =
        CarEntity(sign: 'GHT789', qtdDoors: 2, price: 20000.00);
    expect(carEntity, isNotNull);
  });

  test('Espero que a quantidade de portas seja 2', () {
    CarEntity carEntity =
        CarEntity(sign: 'GHT789', qtdDoors: 2, price: 20000.00);
    expect(carEntity.qtdDoors, 2);
  });

  test('Espero que o valor real seja 40000.00', () {
    CarEntity carEntity =
        CarEntity(sign: 'GHT789', qtdDoors: 2, price: 20000.00);
    var expectativeResult = 40000.00;
    expect(carEntity.realPrice, expectativeResult);
  });

  test('Espero que o valor real seja 0.00', () {
    CarEntity carEntity =
        CarEntity(sign: 'GHT789', qtdDoors: 0, price: 20000.00);
    var expectativeResult = 0.00;
    expect(carEntity.realPrice, expectativeResult);
  });

  test('Espero que o valor seja 10000.00', () {
    CarEntity carEntity =
        CarEntity(sign: 'GHT789', qtdDoors: 2, price: 20000.00);
    var expectativeResult = 10000.00;
    expect(carEntity.setNewPrice = 10000.00, expectativeResult);
  });
}
