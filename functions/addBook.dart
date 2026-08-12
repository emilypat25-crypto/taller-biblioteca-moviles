import 'dart:io';

void agregarLibro(List<Map<String, dynamic>> libros) {
  while (true) {
    try {
      print("Ingrese el título del libro");
      String titulo = stdin.readLineSync()!;
      print("Ingrese el autor del libro");
      String autor = stdin.readLineSync()!;
      print("Ingrese el año de publicación");
      int anio = int.parse(stdin.readLineSync()!);

      if (titulo != "" && autor != "") {
        libros.add({"titulo": titulo, "autor": autor, "anio": anio});
        print("Libro agregado con exito");
        break;
      } else {
        print("El título o el autor estan vacios");
      }
    } catch (e) {
      print("Debe ingresar un numero valido para el año\n");
    }
  }
}
