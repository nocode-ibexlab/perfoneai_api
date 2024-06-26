import "package:dio/dio.dart";
import "package:flutter/foundation.dart";
import "package:pretty_dio_logger/pretty_dio_logger.dart";
import "package:web_socket_channel/web_socket_channel.dart";

import "../perfone_api.dart";

class DioClientForRetrofit {
  final String? bearerToken;
  final String? contentType;
  final ResponseType responseType;
  final String? basicToken;

  DioClientForRetrofit({
    this.bearerToken,
    this.contentType,
    this.basicToken,
    this.responseType = ResponseType.json,
  });

  Map<String, dynamic>? get headers {
    Map<String, dynamic> header = {};
    header['Content-Type'] = contentType ?? "application/json";
    header['Accept'] = "*/*";
    header['Accept-Encoding'] = "gzip,compress";
    header['Accept-Language'] = PerfOneAIApi.language; // 반드시 필요함

    if (bearerToken != null) {
      header['Authorization'] = "Bearer $bearerToken";
    }

    if (basicToken != null) {
      header['Authorization'] = "Basic $basicToken";
    }

    return header;
  }

  Dio init({List<Interceptor>? customInterceptors, bool prettyLog = true}) {
    Dio dio = Dio();

    if (prettyLog) {
      dio.interceptors.add(PrettyDioLogger(
        requestHeader: false,
        requestBody: true,
        responseHeader: false,
        responseBody: true,
      ));
    }

    if (customInterceptors != null && customInterceptors.isNotEmpty) {
      dio.interceptors.addAll(customInterceptors);
    }

    // dio.interceptors.addAll([
    //   ErrorInterceptor(),
    // ]);

    BaseOptions options = BaseOptions(
      headers: headers,
      connectTimeout: const Duration(milliseconds: 30000),
      receiveTimeout: const Duration(milliseconds: 60000),
      responseType: responseType,
      receiveDataWhenStatusError: true,
      validateStatus: (int? status) {
        return status != null;
        // return status != null && status >= 200 && status < 300;
      },
    );

    dio.options = options;
    return dio;
  }
}

class ErrorInterceptor extends Interceptor {
  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    final status = response.statusCode;
    final isValid = status != null /* && status >= 200 && status < 300 */;
    if (!isValid) {
      throw DioException.badResponse(
        statusCode: status!,
        requestOptions: response.requestOptions,
        response: response,
      );
    }
    super.onResponse(response, handler);
  }
}

mixin PerfWebSocket {
  Future<PerfWSConnection> connect(String url, {bool json = true}) async {
    Uri uri = Uri.parse(url);

    switch (uri.scheme) {
      case 'http':
        uri = uri.replace(scheme: 'ws');
        break;
      case 'https':
        uri = uri.replace(scheme: 'wss');
        break;
    }

    if (!PerfOneAIApi.disableLog) {
      debugPrint('WS connecting... $uri');
    }

    final channel = WebSocketChannel.connect(uri);
    await channel.ready;

    if (!PerfOneAIApi.disableLog) {
      debugPrint('WS connected');
    }

    return PerfWSConnection(channel, json: json);
  }
}
