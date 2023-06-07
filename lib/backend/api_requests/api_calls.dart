import 'dart:convert';
import 'dart:typed_data';

import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class LoginCall {
  static Future<ApiCallResponse> call({
    String? email = 'name@gmail.com',
    String? password = '123456',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'login',
      apiUrl: 'http://dignizant.com:5000/signUp/login',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/x-www-form-urlencoded',
      },
      params: {
        'email': email,
        'password': password,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class SignUpCall {
  static Future<ApiCallResponse> call({
    String? email = '',
    int? password,
    int? cPassword,
    String? username = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Sign up',
      apiUrl: 'http://dignizant.com:5000/signUp',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/x-www-form-urlencoded',
      },
      params: {
        'email': email,
        'password': password,
        'cPassword': cPassword,
        'username': username,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic status(dynamic response) => getJsonField(
        response,
        r'''$.status''',
        true,
      );
  static dynamic message(dynamic response) => getJsonField(
        response,
        r'''$.message''',
        true,
      );
}

class CategorydataCall {
  static Future<ApiCallResponse> call({
    String? categoryName = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'categorydata',
      apiUrl: 'http://dignizant.com:5000/Product/getAllProduct/${categoryName}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic alldata(dynamic response) => getJsonField(
        response,
        r'''$..data''',
        true,
      );
  static dynamic tabcategory(dynamic response) => getJsonField(
        response,
        r'''$..data[:].category''',
        true,
      );
  static dynamic id(dynamic response) => getJsonField(
        response,
        r'''$.._id''',
        true,
      );
  static dynamic image(dynamic response) => getJsonField(
        response,
        r'''$..productUrl''',
        true,
      );
  static dynamic price(dynamic response) => getJsonField(
        response,
        r'''$..price''',
        true,
      );
  static dynamic productName(dynamic response) => getJsonField(
        response,
        r'''$..productName''',
        true,
      );
  static dynamic country(dynamic response) => getJsonField(
        response,
        r'''$..country''',
        true,
      );
  static dynamic allcategory(dynamic response) => getJsonField(
        response,
        r'''$..category''',
        true,
      );
  static dynamic oAdata(dynamic response) => getJsonField(
        response,
        r'''$..data''',
        true,
      );
  static dynamic allPimage(dynamic response) => getJsonField(
        response,
        r'''$..productUrl''',
        true,
      );
  static dynamic allPname(dynamic response) => getJsonField(
        response,
        r'''$..productName''',
        true,
      );
  static dynamic allPprice(dynamic response) => getJsonField(
        response,
        r'''$..price''',
        true,
      );
  static dynamic tablist(dynamic response) => getJsonField(
        response,
        r'''$[:].category''',
        true,
      );
  static dynamic alltablist(dynamic response) => getJsonField(
        response,
        r'''$[0]''',
        true,
      );
  static dynamic all(dynamic response) => getJsonField(
        response,
        r'''$[0].data''',
        true,
      );
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar) {
  jsonVar ??= {};
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return '{}';
  }
}
