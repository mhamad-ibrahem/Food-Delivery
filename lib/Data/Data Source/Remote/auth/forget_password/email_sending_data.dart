import '../../../../../Core/Constant/api_link.dart';
import '../../../../../Core/classes/Crud.dart';

class EmailData {
  Crud crud;
  EmailData(this.crud);

  postData(String email) async {
    var response = await crud.postData(AppLink.serverLink, {
      'email': email,
    });
    return response.fold((l) => l, (r) => r);
  }
}
