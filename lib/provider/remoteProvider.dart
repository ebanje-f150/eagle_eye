import 'package:dio/dio.dart';
import 'package:eagle_eye/core/utils/apilibrary.dart';
import 'package:eagle_eye/core/utils/constant.dart';
import 'package:location/location.dart';

class RemoteProvider {
  static const base_url = Constant.Dvaddress;

  void registration(
      {String? name,
      String? password,
      String? email,
      String? phone,
      Function(dynamic user)? onSucess,
      Function(DioError error)? onError,
      Function()? beforeSend}) {
    ApiRequest(url: base_url + 'register', data: {
      "name": name,
      "password": password,
      "email": email,
      "phone": phone,
    }).post(
        beforeSend: () => {if (beforeSend != null) beforeSend()},
        onSuccess: (data) {
          onSucess!(data);
        },
        onError: (error) => {if (onError != null) onError(error)});
  }

  void newDemand({
    String? d_location,
    String? d_date,
    Function(dynamic user)? onSucess,
      Function(DioError error)? onError,
      Function()? beforeSend
  }) async {
    ApiRequest(url: base_url + 'adddemand', data: {
      "d_location": d_location,
      "d_date": d_date,
    }).post(
      beforeSend: () =>{if(beforeSend != null)beforeSend()},
     onSuccess: (data) {
          onSucess!(data);
        },
        onError: (error) => {if (onError != null) onError(error)});
    
  }
}
