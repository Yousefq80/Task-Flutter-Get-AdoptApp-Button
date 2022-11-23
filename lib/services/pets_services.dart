import 'dart:io';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:error_handler/error_handler.dart';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import '../models/pet.dart';

Future<List<Pet>> getPets() async {
  Dio client = Dio();
  List<Pet> pets = [];
  try {
    Response res =
        await client.get("https://coded-pets-api-crud.herokuapp.com/pets");
    pets = (res.data as List).map((pet) => Pet.fromJson(pet)).toList();
  } on DioError catch (e) {
    print("Bad connection $e ");
  }
  return pets;
}
