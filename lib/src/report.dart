import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

import '../perfone_api.dart';
import 'dio_client_for_retrofit.dart';

part 'report.g.dart';

@RestApi(parser: Parser.JsonSerializable)
abstract class Report {
  factory Report() => _Report(
        DioClientForRetrofit().init(prettyLog: !PerfOneAIApi.disableLog),
        baseUrl: PerfOneAIApi.apiEndpoint,
      );

  @POST('/report/list')
  Future<RspReportList> list(@Body() ReqReportList request);

  @POST('/report/download')
  Future<RspMessage> download(@Body() ReqReportDownload request);

  @POST('/report/delete')
  Future<RspMessage> delete(@Body() ReqReportDelete request);

// @POST('/report/main')
// Future<RspMessage> main(@Body() ReqReportMain request);
//
// @POST('/report/monitor')
// Future<RspMessage> monitor(@Body() ReqReportMonitor request);
}
