import 'package:dio/dio.dart';
import 'package:doc_app/core/network/api_cont.dart';
import 'package:doc_app/features/home/data/apis/home_api_consts.dart';
import 'package:doc_app/features/home/data/models/specializations_response_model.dart';
import 'package:retrofit/retrofit.dart';

part 'home_api_service.g.dart';


@RestApi(baseUrl: ApiConsts.baseUrl)
abstract class HomeApiService {
  factory HomeApiService(Dio dio) = _HomeApiService;

  @GET(HomeApiConsts.specializationsIndex)
  Future<SpecializationsResponseModel> getSpecializations();
}