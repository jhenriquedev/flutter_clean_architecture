//Não pode haver imports de bibliotecas externas
//Só pode imports de objetos da mesma camada
class CarEntity {
  String sign;
  int qtdDoors;
  double price;

  CarEntity({
    required this.sign,
    required this.qtdDoors,
    required this.price,
  });

  double get realPrice => price * qtdDoors;

  set setNewPrice(double newPrice) => price = newPrice;
}
