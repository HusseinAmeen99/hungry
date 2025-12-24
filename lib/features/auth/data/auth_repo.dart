import 'package:dio/dio.dart';
import 'package:hungr/core/network/api_error.dart';
import 'package:hungr/core/network/api_service.dart';
import 'package:hungr/core/utils/pref_helper.dart';
import 'package:hungr/features/auth/data/user_model.dart';
import '../../../core/network/api_execptions.dart';

class AuthRepo{
  ApiService apiService=ApiService();
  ///login
  Future<UserModel?>login(String email,String password) async {

    try {
      final response = await apiService.post(
          '/login', {'email': email, 'password': password,});
      if (response is ApiError) {
        throw response;
      }

      if (response is Map<String, dynamic>) {
        final msg = response['message'];
        final code = response['code'];
        final data = response['data'];

        if (code != 200 || data == null) {
          throw ApiError(message: msg);
        }

        final user = UserModel.fromJson(response["data"]);
        if (user.token != null) {
          await PrefHelper.saveToken(user.token!);
        }
        return user;
      }else {
        throw ApiError(message: 'Unexpected Error From Server');
      }
    }on DioError catch(e){
      throw ApiExceptions.handleError(e);
    }catch(e){
      throw ApiError(message: e.toString());
    }
  }

///register
  ///Get Profile Data
  ///update profile data
  ///Logout
}