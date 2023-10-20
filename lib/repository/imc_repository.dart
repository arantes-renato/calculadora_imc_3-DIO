import 'package:calculadora_imc3/shared/widgets/imc.dart';
import 'package:hive/hive.dart';

class ImcRepository {
  static late Box _box;

  ImcRepository._criar();

  static Future<ImcRepository> carregar() async {
    if (Hive.isBoxOpen('IMC_box')) {
      _box = Hive.box('IMC_box');
    } else {
      _box = await Hive.openBox('IMC_box');
    }
    return ImcRepository._criar();
  }

  salvar(Imc imc) {
    _box.add(imc);
  }

  remover(Imc imc) {
    imc.delete();
  }

  List<Imc> obterLista() {
    return _box.values.cast<Imc>().toList();
  }
}
