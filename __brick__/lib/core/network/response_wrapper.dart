import 'dart:convert';

class BaseApiResponse<T> {
  ResponseStatus? responseStatus;
  int? totalCount;
  int? index;
  int? pageSize;
  T? data;

  BaseApiResponse({required this.responseStatus, required this.totalCount, required this.index, required this.pageSize, this.data});

  factory BaseApiResponse.fromJson(Map<String, dynamic> json, Function(dynamic) create) {
    var payLoadResponse = json["data"];
    var isPayLoadNull = payLoadResponse == null;
    if (isPayLoadNull) {
      return BaseApiResponse<T>(
        responseStatus: ResponseStatus.fromJson(json["responseStatus"]),
        totalCount: json["totalCount"] ?? 0,
        index: json["index"] ?? 0,
        pageSize: json["pageSize"] ?? 0,
      );
    } else {
      return BaseApiResponse<T>(
        responseStatus: ResponseStatus.fromJson(json["responseStatus"]),
        totalCount: json["totalCount"] ?? 0,
        index: json["index"] ?? 0,
        pageSize: json["pageSize"] ?? 0,
        data: create(json["data"]),
      );
    }
  }

  factory BaseApiResponse.fromJsonList(Map<String, dynamic> json, Function(List<dynamic>) create) {
    var payLoadResponse = json["data"];
    var isPayLoadNull = payLoadResponse == null;
    if (isPayLoadNull) {
      return BaseApiResponse<T>(
        responseStatus: ResponseStatus.fromJson(json["responseStatus"]),
        totalCount: json["totalCount"] ?? 0,
        index: json["index"] ?? 0,
        pageSize: json["pageSize"] ?? 0,
      );
    } else {
      return BaseApiResponse<T>(
        responseStatus: ResponseStatus.fromJson(json["responseStatus"]),
        totalCount: json["totalCount"] ?? 0,
        index: json["index"] ?? 0,
        pageSize: json["pageSize"] ?? 0,
        data: create(json["data"]),
      );
    }
  }

  factory BaseApiResponse.fromJsonWithoutResult(Map<String, dynamic> json, Function(Map<String, dynamic>) create) {
    return BaseApiResponse(
      responseStatus: ResponseStatus.fromJson(json["responseStatus"]),
      totalCount: json["totalCount"],
      index: json["index"],
      pageSize: json["pageSize"],
    );
  }
}


class ResponseStatus {
  int statuscode;
  String message;
  String severity;

  ResponseStatus({
    required this.statuscode,
    required this.message,
    required this.severity,
  });

  factory ResponseStatus.fromJson(Map<String, dynamic> json) => ResponseStatus(
    statuscode: json["statuscode"],
    message: json["message"],
    severity: json["severity"],
  );

  Map<String, dynamic> toJson() => {
    "statuscode": statuscode,
    "message": message,
    "severity": severity,
  };
}


abstract class Serializable {
  Map<String, dynamic> toJson();
}

enum Status { loading, completed, error }
