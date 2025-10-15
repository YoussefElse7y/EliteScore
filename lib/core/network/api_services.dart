// import 'package:advanced/core/network/api_constants.dart';
// import 'package:advanced/features/login/data/models/login_request_body.dart';
// import 'package:advanced/features/login/data/models/login_response.dart';
// import 'package:advanced/features/sign_up/data/models/sign_up_request_body.dart';
// import 'package:advanced/features/sign_up/data/models/sign_up_response.dart';
// import 'package:dio/dio.dart';
// import 'package:retrofit/error_logger.dart';
// import 'package:retrofit/http.dart';

// part 'api_services.g.dart';

// @RestApi(baseUrl: ApiConstants.baseUrl)
// abstract class ApiServices {
//   factory ApiServices(Dio dio, {String baseUrl}) = _ApiServices;

//   @POST(ApiConstants.loginEndpoint)
//   Future<LoginResponse> login(@Body() LoginRequestBody loginRequestBody);

//   @POST(ApiConstants.registerEndpoint)
//   Future<SignupResponse> register(@Body() SignUpRequestBody signUpRequestBody);
// }
