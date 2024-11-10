import '../../domain/entities/tarea.dart';
import '../../domain/repositories/tarea_repository.dart';
import '../datasources/tarea_service.dart';

class TareaRepositoryImpl implements TareaRepository {
  final TareaService _tareaService;

  TareaRepositoryImpl(this._tareaService);

  @override
  Future<List<Tarea>> obtenerTareas() async {
    return await _tareaService.cargarTareas();
  }
}
