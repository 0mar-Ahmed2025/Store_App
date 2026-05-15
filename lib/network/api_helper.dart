// ignore_for_file: deprecated_member_use

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ApiHelper {
  Future<dynamic> get({required String url}) async {
    http.Response response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception(
        "there is a problem with status code ${response.statusCode}",
      );
    }
  }

  Future<dynamic> post({required String url, @required dynamic body}) async {
    Map<String, String> headers = {};
    http.Response response = await http.post(
      Uri.parse(url),
      headers: headers,
      body: body,
    );
    if (response.statusCode == 200) {
      Map<String, dynamic> responseBody = jsonDecode(response.body);
      return responseBody;
    } else {
      throw Exception(
        "there is a problem with status code ${response.statusCode} with body ${response.body}",
      );
    }
  }

  Future<dynamic> put({required String url, @required dynamic body}) async {
    Map<String, String> headers = {};
    headers.addAll({'Content-Type': 'application/x-www-form-urlencoded'});
    http.Response response = await http.put(
      Uri.parse(url),
      headers: headers,
      body: body,
    );
    if (response.statusCode == 200) {
      Map<String, dynamic> responseBody = jsonDecode(response.body);
      return responseBody;
    } else {
      throw Exception(
        "there is a problem with status code ${response.statusCode} with body ${response.body}",
      );
    }
  }
}
