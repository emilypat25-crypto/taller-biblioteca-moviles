import 'dart:io';

void main() {
  List<Map<String, dynamic>> libros = [];
  bool activo = true;

  while (activo) {
    print('MENÚ BIBLIOTECA');
    print('1. Agregar libro');
    print('2. Listar libros');
    print('3. Actualizar libro');
    print('4. Eliminar libro');
    print('5. Salir');
    stdout.write('Elige una opción: ');

    String? opcion = stdin.readLineSync();

    switch (opcion) {
      case '1':
        agregarLibro(libros);
        break;
      case '2':
        listarLibros(libros);
        break;
      case '3':
        actualizarLibro(libros);
        break;
      case '4':
        eliminarLibro(libros);
        break;
      case '5':
        print('¡Hasta luego!');
        activo = false;
        break;
      default:
        print('Opción inválida. Intenta de nuevo.');
    }
  }
}
