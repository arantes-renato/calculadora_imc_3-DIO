import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
part 'imc.g.dart';

@HiveType(typeId: 0)
class Imc extends HiveObject {
  @HiveField(0)
  final String _id = UniqueKey().toString();

  @HiveField(1)
  double _altura;

  @HiveField(2)
  double _peso;

  @HiveField(3)
  DateTime _data;

  Imc(this._altura, this._peso, this._data);

  String get id => _id;

  DateTime get dia => _data;

  set peso(double peso) {
    _peso = peso;
  }

  double get peso => _peso;

  set altura(double altura) {
    _altura = altura;
  }

  double get altura => _altura;

  double calcularIMC() {
    if (_altura > 0 && _peso > 0) {
      return _peso / ((_altura / 100) * (_altura / 100));
    } else {
      return 0.0;
    }
  }
}
