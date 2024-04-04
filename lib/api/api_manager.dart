import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:movie/api/api_constant.dart';

import '../model/Popular_response.dart';

abstract class ApiManager{

  static Future<PopularResponse> loadPopularList() async{
    Uri url = Uri.https(ApiConstant.baseUrl,ApiConstant.popularApi,  ApiConstant.header);
    try{
      var response = await http.get(url,headers: ApiConstant.header);
      var responseBody = response.body; //return string
      var json = jsonDecode(responseBody); //return json
      return PopularResponse.fromJson(json);

    }
    catch(e){
      throw "";
    }
  }
}