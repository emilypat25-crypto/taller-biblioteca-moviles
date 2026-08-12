import 'dart:io';

void actualizarLibro(List<Map<String, dynamic>> libros) {
  // Revisamos si hay libros.
  if (libros.isEmpty) {
    print('No hay libros para actualizar.');
    return;
  }

  // Mostramos los libros disponibles.
  print('\n--- LISTA DE LIBROS ---');

  for (int i = 0; i < libros.length; i++) {
    print(
      '${i + 1}. '
      'Título: ${libros[i]['titulo']} | '
      'Autor: ${libros[i]['autor']} | '
      'Año: ${libros[i]['anio']}',
    );
  }

  // Pedimos el número del libro que queremos actualizar.
  stdout.write('\nÍndice del libro a actualizar: ');

  // Guardamos lo que escribió el usuario.
  String? indiceTexto = stdin.readLineSync();

  // Convertimos el texto a número.
  int? indice = int.tryParse(indiceTexto ?? '');

  // Revisamos que haya escrito un número.
  if (indice == null) {
    print('Debes ingresar un número.');
    return;
  }

  // Revisamos que el libro exista.
  if (indice < 1 || indice > libros.length) {
    print('Ese libro no existe.');
    return;
  }

  // Restamos 1 porque las posiciones de la lista
  // comienzan desde 0.
  int i = indice - 1;

  // Pedimos los nuevos datos.
  stdout.write('Nuevo título: ');
  String? titulo = stdin.readLineSync();

  stdout.write('Nuevo autor: ');
  String? autor = stdin.readLineSync();

  stdout.write('Nuevo año: ');
  String? anioTexto = stdin.readLineSync();

  // Revisamos que los datos no estén vacíos.
  if (titulo == null ||
      titulo.isEmpty ||
      autor == null ||
      autor.isEmpty ||
      anioTexto == null ||
      anioTexto.isEmpty) {
    print('Los campos no pueden estar vacíos.');
    return;
  }

  // Convertimos el año a número.
  int? anio = int.tryParse(anioTexto);

  // Revisamos que el año sea un número.
  if (anio == null) {
    print('El año debe ser un número.');
    return;
  }

  // Actualizamos los datos del libro.
  libros[i]['titulo'] = titulo;
  libros[i]['autor'] = autor;
  libros[i]['anio'] = anio;

  // Confirmamos que se actualizó correctamente.
  print('Libro actualizado correctamente.');
}