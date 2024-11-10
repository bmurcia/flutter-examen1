class Tarea {
  final String titulo;
  final String tipo;
  final String fecha;

  Tarea({
    required this.titulo,
    required this.tipo,
    required this.fecha,
  });

  factory Tarea.fromJson(Map<String, dynamic> json) {
    return Tarea(
      titulo: json['titulo'],
      tipo: json['tipo'],
      fecha: json['fecha'],
    );
  }
}