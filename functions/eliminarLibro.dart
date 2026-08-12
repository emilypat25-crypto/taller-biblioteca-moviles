import 'dart:io';

void eliminarLibro(List<Map<String, dynamic>> libros) {
  if (libros.isEmpty) {
    print('No hay libros para eliminar.');
    return;
  }

  print('\n--- LISTA DE LIBROS ---');
  for (int i = 0; i < libros.length; i++) {
    print('${i + 1}. Título: ${libros[i]['titulo']} | '
        'Autor: ${libros[i]['autor']} | '
        'Año: ${libros[i]['anio']}');
  }

  stdout.write('Índice del libro a eliminar: ');
  String? indiceTexto = stdin.readLineSync();

  int? indice = int.tryParse(indiceTexto ?? '');
  if (indice == null || indice < 1 || indice > libros.length) {
    print('Error: índice fuera de rango.');
    return;
  }

  Map<String, dynamic> eliminado = libros.removeAt(indice - 1);
  print('Libro eliminado: ${eliminado['titulo']}');
}