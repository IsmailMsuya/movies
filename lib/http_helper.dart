import 'dart:io';

import 'package:http/http.dart' as http;

class HttpHelper
{

  //Fields
  final String apiKey = 'api_key=b36ce8a436c46c5143578f6bc2f3ae9d';
  final String baseURL = 'https://api.themoviedb.org/3/movie';
  final String upComingQueryString = '/upcoming?';
  final String languageQueryString = '&language=en-US';

  //First Getter Method. Similar to Promise. Runs in the background

  //Return a Future from the getUpcoming async method.
   Future<String> getUpcoming () async {
    final String upcoming = baseURL + upComingQueryString + apiKey + languageQueryString;

    http.Response result = await http.get(upcoming);
     if(result.statusCode == HttpStatus.ok){
       String responseBody = result.body;
       return responseBody;
     }
     else{
       return null;
     }





  }


  //HttpHelper.getUpcoming;
  //HttpHelper.urlKey;

  /*
  * Would this make more sense?
  * */
  //Api.urlkey
  //Api.baseURL
  //Api.languageUrl

}

