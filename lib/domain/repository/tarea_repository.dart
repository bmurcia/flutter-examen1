import '../model/tarea.dart';

abstract class TareaRepository {
  Future<List<Tarea>> obtenerTareas();
}
