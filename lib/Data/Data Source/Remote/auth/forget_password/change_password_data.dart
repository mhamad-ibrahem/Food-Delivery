import '../../../../../Core/Constant/api_link.dart';
import '../../../../../Core/classes/Crud.dart';

class ChangePasswordData {
  Crud crud;
  ChangePasswordData(this.crud);

  postData(String password, String confirmPassword) async {
    var response = await crud.postData(AppLink.serverLink, {
      'password': password,
      'confirmPassword': confirmPassword,
    });
    return response.fold((l) => l, (r) => r);
  }
}
