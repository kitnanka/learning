 
 
 import 'package:dio/dio.dart';
import 'package:learning/app/constant.dart';
import 'package:learning/data/responses/responses.dart';
import 'package:retrofit/retrofit.dart';
 part 'app_api.g.dart';

@RestApi(baseUrl: Constant.baseUrl)
 abstract class AppServiceClient{

factory AppServiceClient(Dio dio, {String baseUrl}) = _AppServiceClient;


@POST("/customers/login")
Future<AuthenticationResponse> login();

 }