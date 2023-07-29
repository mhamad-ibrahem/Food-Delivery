import 'dart:convert';
import 'package:dartz/dartz.dart';

import 'package:http/http.dart' as http;

import '../functions/checkInternetConnection.dart';
import 'statusRequest.dart';

class Crud {
  Future<Either<StatusRequest, Map>> postData(String linkUrl, Map data) async {
    try {
      if (await checkInternet()) {
        var response = await http.post(Uri.parse(linkUrl), body: data);
        print('=======================================');
        print(response.statusCode);
        print('=======================================');
        if (response.statusCode == 200 || response.statusCode == 201) {
          Map responseBody = jsonDecode(response.body);
          print('=======================================');
          print(responseBody);
          print('=======================================');
          return Right(responseBody);
        } else {
          return const Left(StatusRequest.serverFaliure);
        }
      } else {
        return const Left(StatusRequest.offlineFaliure);
      }
    } catch (_) {
      return const Left(StatusRequest.serverException);
    }
  }
}
