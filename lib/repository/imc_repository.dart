import 'package:calculadora_imc3/shared/widgets/imc.dart';
import 'package:hive/hive.dart';

class ImcRepository {
  static late Box _box;

  ImcRepository._criar();

  static Future<ImcRepository> carregar() async {
    if (Hive.isBoxOpen('IMC')) {
      _box = Hive.box('IMC');
    } else {
      _box = await Hive.openBox('IMC');
    }
    return ImcRepository._criar();
  }

  remover(Imc imc) {
    imc.delete();
  }

  salvar(Imc imc) {
    _box.add(imc);
  }

  List<Imc> obterLista() {
    return _box.values.cast<Imc>().toList();
  }
}
