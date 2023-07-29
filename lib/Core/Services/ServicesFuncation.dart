import 'package:http/http.dart' as http;
import 'dart:convert';

class ServicesFuncation {
  getRequest(String url) async {
    try {
      var response = await http.get(Uri.parse(url));
      if(response.statusCode == 200){
        var responseBody =jsonDecode(response.body);
        return responseBody;
      }else{
        print('error ${response.statusCode}');
      }
    } catch (e) {
      print('error catch $e');
    }
  }
  postRequest(String url,Map data) async {
    try {
      var response = await http.post(Uri.parse(url),body :data);
      if(response.statusCode == 200){
        var responseBody =jsonDecode(response.body);
        return responseBody;
      }else{
        print('error ${response.statusCode}');
      }
    } catch (e) {
      print('error catch $e');
    }
  }
}
validate(String value,int max,int min){
    if(value.isEmpty ){
      return 'cant be empty ';
    }
    if(value.length > max){
      return 'you Cant enter more than $max letter';
    }
    if (value.length < min ){
      return'you cant enter less than $min letter';
    }
  }
