import '../model/tarea.dart';
import 'tarea_repository.dart';
import '../service/tarea_service.dart';

class TareaRepositoryImpl implements TareaRepository {
  final TareaService _tareaService;

  TareaRepositoryImpl(this._tareaService);

  @override
  Future<List<Tarea>> obtenerTareas() async {
    return await _tareaService.cargarTareas();
  }
}
