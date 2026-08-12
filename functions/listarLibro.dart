void listarLibros(List<Map<String, dynamic>> libros) {
  if (libros.isEmpty) {
    // Verificamos si la lista está vacía.
    print(
      'No hay libros registrados.',
    ); // Si no hay libros, mostramos este mensaje.
    return; // "return" termina la función aquí.
  }

  print('LISTA DE LIBROS'); // Si hay libros, mostramos un título.
  for (int i = 0; i < libros.length; i++) {
    //// "i" comienza en 0 y aumenta hasta llegar al último libro.
    print(
      // Mostramos la información del libro actual.
      '${i + 1}. Título: ${libros[i]['titulo']} | ' // "i + 1" muestra el número del libro comenzando desde 1.
      'Autor: ${libros[i]['autor']} | '
      'Año: ${libros[i]['anio']}',
    );
  }
}
