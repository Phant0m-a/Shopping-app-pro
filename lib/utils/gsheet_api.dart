import 'package:gsheets/gsheets.dart';

class gSheetApi{

//gsheet creds
static const _credentials = r'''
{
  "type": "service_account",
  "project_id": "gsheets-378105",
  "private_key_id": "dcaadbe2202b59862635722689788aec27c5069a",
  "private_key": "-----BEGIN PRIVATE KEY-----\nMIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQDEvrOjFamVl45e\n9yu4y6fmHGI9RQuwWSfByKviF16k/p6fhYmxgwg7PCTN5wbEYRq6qUr8b9uzoeoR\nymj4pEPUeNOSP8mZ4a7f09xXjTRZqOHgi1kptziO1yDCl0z+WDmPI1tBg6vSruR6\nzCkXhDMTYCKa2ut/xdsqW8TSyEdQOWShtJybWxnADMBfb5KMTX+tILLMHCjpFukN\njAC+4e/aOoCx+4SS5lIqZj8bQSh9+qzknhRj/2zaDEV5aaOXDTTWWnZrwYswnt6L\nBua/3YTl18yX6FwYProAugaR7P7Fz6II2G1zYXFRu6PLjk8eYCyso1BVTNrkr3uQ\nmyZdarBtAgMBAAECggEAEcdi38ykFbzLlIjU9l7O9hQgC4XbA81WsqQB5k0y1Amf\nR26Pjg83dfTeJY4oNiRJQE9uk4e/LIkn6AIowLlFWOSvR8LEYse6YAca3P2JWsXQ\nXZRyEvs33O6TSwpVnpFV6DmrdCzkIMaFppQe7X1YiTpxfhlk2RfF0ZrX2y1Whmj0\ntCfZRhssTzt/YMEsNzP8iNZH170DYqdts1yK0w1TzWEyiXPGNaKZRPA4WBDv3wEK\n46h8GkhPSeM5fA+NjUx1fAE6rKM3SnZovJhJNUnNa308TC4NRoM+zJ+i7I3lncwe\n+B+KrcewUcfH8OmxlYllAUI8jgzyP+bfltyNXi40cQKBgQDrPzxGhW8NglXvum2w\nZ5gYbX1fssYMUvLXkRxGG4S62PVDEiQLuj0DcvDudVTj9zU/4xaDNjpVUQSkBqBj\nWjTrUlxr3v3tIcpqFZGTZ5BZtSL+PmqkWD0CO9UfH6arSZD2seZgsxV1fqGXG4it\nhIrudpXL9HO6gKUJkzdwuo8rkQKBgQDWGfGqir6sksr2+dDw6+kf7pW7mVZSjEWI\nOnj+QGlOWTnrPQiJzlPfsqDMwDFTQi9NvotTzojBSgw6ocLhgzT0BnwgRu+akglH\nwFZDynaHHDtOAIPj7M92yIRl7jw/NBxQZsbf8YbuEasQ4g0cEDXleH4nElZfwc4k\n7YeqEBwxHQKBgDBB9Jdy3+khh4d58u5xEd5Q95seDUqR6YcXGXm4Q24g+48atZJC\nTina9lm0cAmjuKS2bPPVt/mweQc85MH8y0ZKyvLF98khWWiRrB9U62O7qMYG/9Fe\n2IUQyRNtZr9UhAxXSi8kDY7gvz1ERLFzsxxf7zK7ntHveeuQ65qQarZBAoGBAILg\nrSgxVEmuGkBLifwcWg/ZCtL48xnXAZI7HEdgHH92b79rOdLzu7XdPgqr2fspVD1U\nI1uBv3tYxoz44WZ1jGM3q50Xf9SfPOkNnC4oj7gb++y8x+MGmfPks3qT3WRNeJl1\nmlC/FlpllorlhFoJVskFlShRP1ed42QTh4DgBDvJAoGAVU3g+YIXsNawjjqLNVkQ\ngJQNvYoWKg7TlKg2qlR+c+nDg/qxNGy0V21oNw7/qKufTC7LMGWg+KgZrx+w3fAD\nK7MjDtI8a3f00IZedCUarmOyDLULIzZN6vATX9kitgtrZE3ZLrOl7DmbVhKhd0+J\nNARTOgqGkuB/5bp/G3IXe7s=\n-----END PRIVATE KEY-----\n",
  "client_email": "flutter-expenditures@gsheets-378105.iam.gserviceaccount.com",
  "client_id": "102718705051172776437",
  "auth_uri": "https://accounts.google.com/o/oauth2/auth",
  "token_uri": "https://oauth2.googleapis.com/token",
  "auth_provider_x509_cert_url": "https://www.googleapis.com/oauth2/v1/certs",
  "client_x509_cert_url": "https://www.googleapis.com/robot/v1/metadata/x509/flutter-expenditures%40gsheets-378105.iam.gserviceaccount.com"
}


''';
 //googlesheed id
  static const _gSheetsId = '1ZgY0zGdQv4JStSUdLfc_K5iAkK4Zwdw34JJQXoLua7s';

//init gsheet
  static final _gsheets = GSheets(_credentials);


Future init()async{
 
//fetch the spreadsheet by its id
  final excelSheet = await _gsheets.spreadsheet(_gSheetsId);

//fetch worksheet by its title {mine is 2023}
  var _workSheet = excelSheet.worksheetByTitle('home_expenses');
// insert data into excelsheet
//  workSheet!.values.insertValue('hello world', column: 1, row: 1);
  
}

}