import 'package:dio/dio.dart';
import 'package:doc_app/core/network/api_cont.dart';
import 'package:doc_app/features/login/data/models/login_request_body.dart';
import 'package:doc_app/features/login/data/models/login_response.dart';
import 'package:doc_app/features/sign_up/data/models/sign_up_request_body.dart';
import 'package:doc_app/features/sign_up/data/models/sign_up_response.dart';
import 'package:retrofit/retrofit.dart';

part 'api_service.g.dart';

//annotation for retrofit
@RestApi(baseUrl: ApiConsts.baseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @POST(ApiConsts.login)
  Future<LoginResponse> login(
    @Body() LoginRequestBody loginRequestBody,
  );

  @POST(ApiConsts.signup)
  Future<SignupResponse> signup(
      @Body() SignupRequestBody signUpRequestBody,
      );
}
