import 'package:bagas_money_record/config/api.dart';
import 'package:bagas_money_record/config/app_request.dart';
import 'package:bagas_money_record/config/session.dart';
import 'package:bagas_money_record/data/model/user.dart';

class SourceUser {
  static Future<bool> login(String email, String password) async {
    String url = '${Api.user}/login.php';
    Map? responseBody = await AppRequest.posts(url, {
      'email': email,
      'password': password,
    });
    if (responseBody == null) return false;

    if (responseBody['success']) {
      var mapUser = responseBody['data'];
      Session.saveUser(User.fromJson(mapUser));
    }
    return responseBody['success'];
  }
}
