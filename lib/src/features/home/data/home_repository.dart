import 'package:exam7/src/common/model/coin_model.dart';
import 'package:exam7/src/common/service/coins_list.dart';

class HomeRepository {
  static List<Crypto> getAll() {
    return coins.map(Crypto.fromJson).toList();
  }
}
