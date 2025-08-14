import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

abstract class Failure {
  final String errorMsg;

  Failure({required this.errorMsg});
}

class ServerFailure extends Failure {
  ServerFailure({required super.errorMsg});

  factory ServerFailure.fromDioError(DioException dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure(
          errorMsg: "Connection Timeout while connecting to the server ",
        );
      case DioExceptionType.sendTimeout:
        return ServerFailure(
          errorMsg: "Send Timeout while connecting to the server ",
        );
      case DioExceptionType.receiveTimeout:
        return ServerFailure(
          errorMsg: "Recieve Timeout while connecting to the server ",
        );
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
          dioError.response!.statusCode!,
          dioError.response!.data,
        );
      case DioExceptionType.cancel:
        return ServerFailure(
          errorMsg: "Request cancelled while connecting to the server ",
        );
      case DioExceptionType.unknown:
        if (dioError.message!.contains("SocketException")) {
          return ServerFailure(errorMsg: "No internet connection");
        }
        return ServerFailure(errorMsg: "Unexpected error, please try again");
      default:
        return ServerFailure(errorMsg: "Oops , There was an error , Kindly try again");
    }
  }

  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(errorMsg: response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailure(
        errorMsg: "Your request wasn't found , Kindly try again later",
      );
    } else if (statusCode == 500) {
      return ServerFailure(
        errorMsg: "Internal server error , Kindly try again later ",
      );
    } else {
      return ServerFailure(
        errorMsg: "Oops , There was an error , Kindly try again",
      );
    }
  }
}
