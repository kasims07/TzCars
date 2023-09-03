import 'dart:io';
import 'dart:typed_data';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:mime/mime.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../api_client/api_constans.dart';
import '../utils/alert_utils.dart';

class ApiBaseHelper {
  static Future<BaseOptions> createDioObject() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    //String? token = prefs.getString(WSConstants.token);
    String? token;

    return BaseOptions(
        /*connectTimeout: 12000,
        receiveTimeout: 12000,*/
        connectTimeout: const Duration(microseconds: 35000),
        receiveTimeout: const Duration(microseconds: 25000),
        baseUrl: APIConstants.baseUrl,
        //headers: {'Content-Type':'application/json'},
        headers: token != null ? {'Authorization': "Bearer " + token} : null);
  }

  static showAPILogs(dio) {
    dio.interceptors.add(PrettyDioLogger(
      requestHeader: true,
      requestBody: true,
      responseBody: true,
      responseHeader: false,
      compact: false,
    ));
  }

  Future<dynamic> get(String url, {String? headers}) async {
    var responseJson;
    final baseOptions = await createDioObject();
    Dio dio = Dio(baseOptions);
    showAPILogs(dio);
    try {
      final response = await dio.get(url);
      responseJson = _returnResponse(response);
      return responseJson;
    } catch (e) {
      if (e is DioError) {
        AlertUtils.showToast(e.response!.data['message']);
      }
    }
  }

  Future<dynamic> post(String url,
      {required Map<String, dynamic> reqbody}) async {
    var responseJson;
    final baseOptions = await createDioObject();
    Dio dio = Dio(baseOptions);
    showAPILogs(dio);
    try {
      final response = await dio.post(url, data: reqbody);
      debugPrint(response.toString());
      debugPrint('RESPONSEEE $response');
      responseJson = _returnResponse(response);
      debugPrint('RESPONSE_MY $responseJson');
      return responseJson;
    } catch (e) {
      if (e is DioError) {
        debugPrint('MY_DATA ${e.error.toString()}');
        debugPrint('MY_DATA ${e.response!.data['message']}');
        debugPrint('MY_DATA ${e.response!.data}');
        //AlertUtils.showToast(e.response!.data['message']);\

        //responseJson = _returnResponse(e.response!.data);
        return e.response!.data;
      }
    }
  }

  Future<dynamic> multipart_post(String url,
      {required FormData reqbody}) async {
    var responseJson;
    final baseOptions = await createDioObject();
    Dio dio = Dio(baseOptions);
    showAPILogs(dio);
    try {
      final response = await dio.post(url, data: reqbody);
      debugPrint(response.toString());
      responseJson = _returnResponse(response);
      debugPrint(responseJson);
      return responseJson;
    } catch (e) {
      if (e is DioError) {
        AlertUtils.showToast(e.response!.data['message']);
      }
    }
  }

  Future<dynamic> patch(String url,
      {required Map<String, dynamic> reqbody}) async {
    var responseJson;
    final baseOptions = await createDioObject();
    Dio dio = Dio(baseOptions);
    showAPILogs(dio);
    try {
      final response = await dio.patch(url, data: reqbody);
      responseJson = _returnResponse(response);
      return responseJson;
    } catch (e) {
      if (e is DioError) {
        AlertUtils.showToast(e.response!.data['message']);
      }
    }
  }

  Future<dynamic> put(String url,
      {required Map<String, dynamic> reqbody}) async {
    var responseJson;
    final baseOptions = await createDioObject();
    Dio dio = Dio(baseOptions);
    showAPILogs(dio);
    try {
      final response = await dio.put(url, data: reqbody);
      responseJson = _returnResponse(response);
      return responseJson;
    } catch (e) {
      if (e is DioError) {
        AlertUtils.showToast(e.response!.data['message']);
      }
    }
  }

  Future<dynamic> delete(String url) async {
    var responseJson;
    final baseOptions = await createDioObject();
    Dio dio = Dio(baseOptions);
    showAPILogs(dio);
    try {
      final response = await dio.delete(url);
      responseJson = _returnResponse(response);
      return responseJson;
    } catch (e) {
      if (e is DioError) {
        AlertUtils.showToast(e.response!.data['message']);
      }
    }
  }

  Future<int> fileUploadPUT(String url, {required File file}) async {
    int statusCode = 0;
    var responseJson;
    final baseOptions = await createDioObject();
    Dio dio = Dio();
    dio.options.connectTimeout = const Duration(seconds: 5); //5s
    dio.options.receiveTimeout = const Duration(seconds: 5);
    showAPILogs(dio);
    try {
      Uint8List image = File(file.path).readAsBytesSync();

      Options options =
          Options(contentType: lookupMimeType(file.path), headers: {
        'Content-Type': '*/*',
        'Accept': "*/*",
        'Content-Length': image.length,
        'Connection': 'keep-alive',
      });

      debugPrint('Header Success');
      Response response =
          await dio.put(url, data: file.openRead(), options: options);

      debugPrint('ImageResponse Code${response.statusCode}');

      statusCode = response.statusCode!;
      responseJson = _returnResponse(response);
      debugPrint('ImageResponse $responseJson');
      return statusCode;
    } catch (e) {
      if (e is DioError) {
        //AlertUtils.showToast(e.response!.data['message']);
        debugPrint('Error ${e.message}');
      }
    }
    return statusCode;
  }
}

dynamic _returnResponse(Response response) {
  debugPrint(response.statusCode.toString());
  switch (response.statusCode) {
    case 200:
      var responseJson = (response);
      return responseJson;
    case 201:
      var responseJson = (response);
      return responseJson;
    case 202:
      var responseJson = (response);
      return responseJson;
    case 400:
      var responseJson = response;
      return responseJson;
    case 403:
      var responseJson = response;
      return responseJson;
    case 404:
      var responseJson = (response);
      return responseJson;
    case 401:
      var responseJson = response;
      return responseJson;
    case 422:
      var responseJson = response;
      return responseJson;
    case 500:
      var responseJson = response;
      return responseJson;
  }
}
