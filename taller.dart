import 'dart:io';
import 'functions/listarLibro.dart';
import 'functions/addBook.dart';

void main() {
  List<Map<String, dynamic>> libros = [];
  bool activo = true;

  while (activo) {
    print(
      'MENÚ BIBLIOTECA \n\n1. Agregar libro\n2. Listar libros\n3. Actualizar libro\n4. Eliminar libro\n5. Salir \n\n Elige una opción:',
    );

    String? opcion = stdin.readLineSync();

    switch (opcion) {
      case '1':
        agregarLibro(libros);
        break;
      case '2':
        listarLibros(libros);
        break;
      /*   case '3':
        actualizarLibro(libros);
        break;
      case '4':
        eliminarLibro(libros);
        break; */
      case '5':
        print('Chao Gonorrea');
        activo = false;
        break;
      default:
        print('Opción invalida, intenta de nuevo');
    }
  }
}
