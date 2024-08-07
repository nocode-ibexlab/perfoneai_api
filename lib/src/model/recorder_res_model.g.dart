// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recorder_res_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RspRecorderGetProperty _$RspRecorderGetPropertyFromJson(
        Map<String, dynamic> json) =>
    RspRecorderGetProperty(
      status: json['status'] as int?,
      message: json['message'] as String?,
      result: json['result'] as Map<String, dynamic>?,
      timestamp: json['timestamp'] as num?,
      error: json['error'] as String?,
      path: json['path'] as String?,
    )..resultData = json['resultData'] == null
        ? null
        : RspRecorderGetPropertyRes.fromJson(
            json['resultData'] as Map<String, dynamic>);

Map<String, dynamic> _$RspRecorderGetPropertyToJson(
        RspRecorderGetProperty instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'result': instance.result,
      'timestamp': instance.timestamp,
      'error': instance.error,
      'path': instance.path,
      'resultData': instance.resultData,
    };

HttpRequestLineModel _$HttpRequestLineModelFromJson(
        Map<String, dynamic> json) =>
    HttpRequestLineModel(
      UrlPort: json['UrlPort'] as String?,
      QueryString: json['QueryString'] as String?,
      UrlHost: json['UrlHost'] as String?,
      Uri: json['Uri'] as String?,
      HttpVersion: json['HttpVersion'] as String?,
      HttpMethod: json['HttpMethod'] as String?,
    );

Map<String, dynamic> _$HttpRequestLineModelToJson(
        HttpRequestLineModel instance) =>
    <String, dynamic>{
      'UrlPort': instance.UrlPort,
      'QueryString': instance.QueryString,
      'UrlHost': instance.UrlHost,
      'Uri': instance.Uri,
      'HttpVersion': instance.HttpVersion,
      'HttpMethod': instance.HttpMethod,
    };

HttpHeaderModel _$HttpHeaderModelFromJson(Map<String, dynamic> json) =>
    HttpHeaderModel(
      PORT: json['PORT'] as String?,
      Accept: json['Accept'] as String?,
      UserTransaction: json['User-Transaction'] as String?,
      Referer: json['Referer'] as String?,
      Connection: json['Connection'] as String?,
      SecFetchDest: json['Sec-Fetch-Dest'] as String?,
      SecFetchSite: json['Sec-Fetch-Site'] as String?,
      Host: json['Host'] as String?,
      AcceptEncoding: json['Accept-Encoding'] as String?,
      Timestamp: json['Timestamp'] as String?,
      SecFetchMode: json['Sec-Fetch-Mode'] as String?,
      Authorization: json['Authorization'] as String?,
      AcceptLanguage: json['Accept-Language'] as String?,
    );

Map<String, dynamic> _$HttpHeaderModelToJson(HttpHeaderModel instance) =>
    <String, dynamic>{
      'PORT': instance.PORT,
      'Accept': instance.Accept,
      'User-Transaction': instance.UserTransaction,
      'Referer': instance.Referer,
      'Connection': instance.Connection,
      'Sec-Fetch-Dest': instance.SecFetchDest,
      'Sec-Fetch-Site': instance.SecFetchSite,
      'Host': instance.Host,
      'Accept-Encoding': instance.AcceptEncoding,
      'Timestamp': instance.Timestamp,
      'Sec-Fetch-Mode': instance.SecFetchMode,
      'Authorization': instance.Authorization,
      'Accept-Language': instance.AcceptLanguage,
    };

MessageBodyModel _$MessageBodyModelFromJson(Map<String, dynamic> json) =>
    MessageBodyModel(
      PostData: json['PostData'] as String?,
    );

Map<String, dynamic> _$MessageBodyModelToJson(MessageBodyModel instance) =>
    <String, dynamic>{
      'PostData': instance.PostData,
    };

TcpInformationModel _$TcpInformationModelFromJson(Map<String, dynamic> json) =>
    TcpInformationModel(
      port: json['PORT'] as String?,
      ip: json['IP'] as String?,
    );

Map<String, dynamic> _$TcpInformationModelToJson(
        TcpInformationModel instance) =>
    <String, dynamic>{
      'PORT': instance.port,
      'IP': instance.ip,
    };

RspRecorderTransaction _$RspRecorderTransactionFromJson(
        Map<String, dynamic> json) =>
    RspRecorderTransaction(
      status: json['status'] as int?,
      message: json['message'] as String?,
      result: json['result'] as Map<String, dynamic>?,
      timestamp: json['timestamp'] as num?,
      error: json['error'] as String?,
      path: json['path'] as String?,
    )..resultData = json['resultData'] == null
        ? null
        : RspRecorderTransactionRes.fromJson(
            json['resultData'] as Map<String, dynamic>);

Map<String, dynamic> _$RspRecorderTransactionToJson(
        RspRecorderTransaction instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'result': instance.result,
      'timestamp': instance.timestamp,
      'error': instance.error,
      'path': instance.path,
      'resultData': instance.resultData,
    };

RspRecorderGetScriptList _$RspRecorderGetScriptListFromJson(
        Map<String, dynamic> json) =>
    RspRecorderGetScriptList(
      status: json['status'] as int?,
      message: json['message'] as String?,
      result: json['result'] as Map<String, dynamic>?,
      timestamp: json['timestamp'] as num?,
      error: json['error'] as String?,
      path: json['path'] as String?,
    )..resultData = json['resultData'] == null
        ? null
        : RecorderGetScriptListRes.fromJson(
            json['resultData'] as Map<String, dynamic>);

Map<String, dynamic> _$RspRecorderGetScriptListToJson(
        RspRecorderGetScriptList instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'result': instance.result,
      'timestamp': instance.timestamp,
      'error': instance.error,
      'path': instance.path,
      'resultData': instance.resultData,
    };

ScriptModel _$ScriptModelFromJson(Map<String, dynamic> json) => ScriptModel(
      script_name: json['script_name'] as String?,
      create_datetime: json['create_datetime'] as String?,
    );

Map<String, dynamic> _$ScriptModelToJson(ScriptModel instance) =>
    <String, dynamic>{
      'script_name': instance.script_name,
      'create_datetime': instance.create_datetime,
    };

RspRecorderGetVerificationInfo _$RspRecorderGetVerificationInfoFromJson(
        Map<String, dynamic> json) =>
    RspRecorderGetVerificationInfo(
      status: json['status'] as int?,
      message: json['message'] as String?,
      result: json['result'] as Map<String, dynamic>?,
      timestamp: json['timestamp'] as num?,
      error: json['error'] as String?,
      path: json['path'] as String?,
    )..resultData = json['resultData'] == null
        ? null
        : RspRecorderGetVerificationInfoRes.fromJson(
            json['resultData'] as Map<String, dynamic>);

Map<String, dynamic> _$RspRecorderGetVerificationInfoToJson(
        RspRecorderGetVerificationInfo instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'result': instance.result,
      'timestamp': instance.timestamp,
      'error': instance.error,
      'path': instance.path,
      'resultData': instance.resultData,
    };
