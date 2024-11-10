import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;
import '../../domain/entities/tarea.dart';

class TareaService {
  Future<List<Tarea>> cargarTareas() async {
    final String response = await rootBundle.loadString('asset/tareas.json');
    final List<dynamic> data = json.decode(response);

    return data.map((tareaJson) => Tarea.fromJson(tareaJson)).toList();
  }
}
