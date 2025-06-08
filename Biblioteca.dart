import 'Libro.dart' show Libro;

class Biblioteca {
  List<Libro> libros = [];

  void agregarLibro(Libro libro){
    libros.add(libro);
    separador();
    print("Libro: ${libro.titulo} agregado con exito");
  }

  void eliminarLibro(Libro libro){
    if (libros.remove(libro)){
      separador();
      print("Libro: ${libro.titulo} eliminado con exito");
    }
    else{
      separador();
      print("Libro: ${libro.titulo} no existe en la biblioteca");
    }
  }

  void buscarLibroPorAutor(String autor){
    final listlibros = libros.where((libros) => libros.autor == autor).toList();

    if (listlibros.length > 0){
      separador();
      print("Lista de libros de autor $autor");

      for (final libro in listlibros){
        print("Titulo: ${libro.titulo} \tAutor: ${libro.autor} \tAnio Publicacion: ${libro.anioPublicacion}");
      }
    }
    else{
      separador();
      print("No hay libros de autor $autor");
    }
  }

  void listarLibrosPorAnioPublicacion(){
    libros.sort((a, b) => a.anioPublicacion.compareTo(b.anioPublicacion));
    separador();
    print("Libros ordenados por anio de publicacion:");

    for (final libro in libros){
      print("Titulo: ${libro.titulo} \tAutor: ${libro.autor} \tAnio Publicacion: ${libro.anioPublicacion}");
    }
  }

  void separador(){
    print("*" * 50);
  }
}