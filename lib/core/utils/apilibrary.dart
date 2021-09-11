import 'package:dio/dio.dart';
import 'package:eagle_eye/screens/Items/Items.dart';

class ApiRequest {
  final String? url;
  final Map<String, dynamic>? data;
  final String? token;
  ApiRequest({
    this.data,
    this.url,
    this.token,
  });
  Dio _dio() {
    return Dio(BaseOptions(headers: {'Authorisation': 'Bearer $token'}));
  }

  // void get() {
  //   Function()? beforeSend;
  //   Function(dynamic data)? onSuccess;
  //   Function(dynamic error)? onError;
  // }

  void post({
    Function()? beforeSend,
    Function(dynamic data)? onSuccess,
    Function(dynamic error)? onError,
  }) {
    _dio().post(this.url!).then((res) {
      if (onSuccess != null) onSuccess(res.data);
    }).catchError((error) {
      if (onError != null) onError(error);
    });
  }

 void get({
    Function()? beforeSend,
    Function(dynamic data)? onSuccess,
    Function(dynamic error)? onError,
  }) {
    _dio().get(this.url!).then((res) {
      if (onSuccess != null) onSuccess(res.data);
    }).catchError((error) {
      if (onError != null) onError(error);
    });
  }



  void put({
    Function()? beforeSend,
    Function(dynamic data)? onSuccess,
    Function(dynamic error)? onError,
  }) {
    _dio().put(this.url!).then((res) {
      if (onSuccess != null) onSuccess(res.data);
    }).catchError((error) {
      if (onError != null) onError(error);
    });
  }


  void delete({
    Function()? beforeSend,
    Function(dynamic data)? onSuccess,
    Function(dynamic error)? onError,
  }) {
    _dio().delete(this.url!).then((res) {
      if (onSuccess != null) onSuccess(res.data);
    }).catchError((error) {
      if (onError != null) onError(error);
    });
  }
  
}
