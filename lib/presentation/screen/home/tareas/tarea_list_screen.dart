import 'package:flutter/material.dart';
import '../../../../data/datasources/tarea_service.dart';
import '../../../../data/repositories/tarea_repository_impl.dart';
import '../../../../domain/entities/tarea.dart';

class TareaListScreen extends StatefulWidget {
  const TareaListScreen({super.key});

  @override
  _TareaListScreenState createState() => _TareaListScreenState();
}

class _TareaListScreenState extends State<TareaListScreen> {
  late TareaRepositoryImpl _tareaRepository;
  late Future<List<Tarea>> _tareasFuture;

  @override
  void initState() {
    super.initState();
    _tareaRepository = TareaRepositoryImpl(TareaService());
    _tareasFuture = _tareaRepository.obtenerTareas();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Lista de Tareas"),
      ),
      body: FutureBuilder<List<Tarea>>(
        future: _tareasFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text("Error: ${snapshot.error}"));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(child: Text("No hay tareas pendientes."));
          }

          final tareas = snapshot.data!;
          return ListView.builder(
            itemCount: tareas.length,
            itemBuilder: (context, index) {
              final tarea = tareas[index];
              return ListTile(
                title: Text(tarea.titulo),
                subtitle: Text('${tarea.tipo} - Fecha: ${tarea.fecha}'),
              );
            },
          );
        },
      ),
    );
  }
}
