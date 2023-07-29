import '../../../../../Core/Constant/api_link.dart';
import '../../../../../Core/classes/Crud.dart';

class SignUpData {
  Crud crud;
  SignUpData(this.crud);

  postData(
      String email, String password, String name, String phoneNumber) async {
    var response = await crud.postData(AppLink.serverLink, {
      'password': password,
      'email': email,
      'name': name,
      'phoneNumber': phoneNumber
    });
    return response.fold((l) => l, (r) => r);
  }
}
