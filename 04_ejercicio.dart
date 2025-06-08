import 'Biblioteca.dart' show Biblioteca;
import 'Libro.dart' show Libro;

void main(){
  var biblioteca = Biblioteca();
  Libro libro1 = Libro("El Patito Feo", "Hans Christian Andersen", 1837);
  Libro libro2 = Libro("Caperucita Roja", "Charles Perrault", 1697);
  Libro libro3 = Libro("El gato con botas", "Charles Perrault", 1697);
  Libro libro4 = Libro("Hansel y Gretel", "Hermanos Grimm", 1812);
  Libro libro5 = Libro("Las aventuras de Sherlock Holmes", "Sir Arthur Conan Doyle", 1887);

  biblioteca.agregarLibro(libro1);
  biblioteca.agregarLibro(libro2);
  biblioteca.agregarLibro(libro3);
  biblioteca.agregarLibro(libro4);
  biblioteca.agregarLibro(libro5);
  biblioteca.buscarLibroPorAutor("Charles Perrault");
  biblioteca.eliminarLibro(libro2);
  biblioteca.listarLibrosPorAnioPublicacion();
}