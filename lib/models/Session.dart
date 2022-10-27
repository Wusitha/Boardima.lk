import 'package:http/http.dart' as http;
class Session{
  static Map<String,String> headers={};

  static void updateCookie(http.Response response){
    String? rawCookie=response.headers["set-cookie"];
    if(rawCookie!=null)
      {
        int index=rawCookie.indexOf(";");
        headers["cookie"]=(index==-1)?rawCookie:rawCookie.substring(0,index);
      }

  }
  static Map<String,String> getCookie()
  {
    return headers;
  }

}