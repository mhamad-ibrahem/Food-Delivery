import '../../../../../Core/Constant/api_link.dart';
import '../../../../../Core/classes/Crud.dart';

class VertifayData {
  Crud crud;
  VertifayData(this.crud);

  postData(String verifayCode) async {
    var response = await crud.postData(AppLink.serverLink, {
      'verifayCode': verifayCode,
    });
    return response.fold((l) => l, (r) => r);
  }
}
