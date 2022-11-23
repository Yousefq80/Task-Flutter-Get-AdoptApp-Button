import 'package:adopt_app/models/pet.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:adopt_app/services/pets_services.dart';

class PetsProvider extends ChangeNotifier {
  List<Pet> pets = [];

  Future<List> getPetsProvider() async {
    notifyListeners();
    pets = await getPets();
    return pets;
  }
}
