//业务请求封装
import 'dart:async';
import 'net_request.dart';
import '../config/service_url.dart';

Future getGlobal() async {
  return getRequest(servicePath['getConfig']);
}

Future getUsers({bool loadMore, String nextUrl,Map<String, dynamic> params}) async {
  var url;
  if (loadMore) {
    url = nextUrl;
  } else {
    url = servicePath['getUsers'];
  }
  return getRequest(url, params: params);
}

Future getParty([bool loadMore, String nextUrl]) async {
  var url;
  if (loadMore) {
    url = nextUrl;
  } else {
    url = servicePath['getParty'];
  }
  return getRequest(url);
}
