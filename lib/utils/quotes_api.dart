import 'package:http/http.dart' as http;

class QuotesApi {

sendRequest (){
  // get url
// make uri

  // var uri = http.post(url);
//send request
  var response = http.post(
      Uri.https(
        'https://quotes.rest/qod?language=en',
        '/',
      ),
      headers: {
        'accept': 'application/json',
      });
// check response
// var res = response.code == '200'? true:false;
// decode body

}
}
