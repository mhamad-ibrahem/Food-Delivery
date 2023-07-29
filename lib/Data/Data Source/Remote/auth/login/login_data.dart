import '../../../../../Core/Constant/api_link.dart';
import '../../../../../Core/classes/Crud.dart';

class LoginData {
  Crud crud;
  LoginData(this.crud);

  postData(String email, String password) async {
    var response = await crud.postData(AppLink.serverLink, {
      'password': password,
      'email': email,
    });
    return response.fold((l) => l, (r) => r);
  }
}
