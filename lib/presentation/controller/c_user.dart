import 'package:get/get.dart';

import '../../data/model/user.dart';

class CUser extends GetxController {
  final _data = User().obs;
  User get data => _data.value;
  setData(n) => _data.value = n;
}
