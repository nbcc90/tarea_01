import 'Empleado.dart' show Empleado;


void main(){
  final List<Empleado> empleados = [];

  empleados.add(
    Empleado("Kevin", "Tester", 70000)
  );
  empleados.add(
    Empleado("Junior", "Programador", 80000)
  );
  empleados.add(
    Empleado("Abaloy", "QA", 120000)
  );

  for (final empleado in empleados){
    print("Empleado: ${empleado.nombre} \t Salario: ${empleado.salario}");
  }

  print("*" * 50);
  print("Salario total: ${getSalarioTotal(empleados)}");
  print("Salario promedio: ${getSalarioTotal(empleados) / empleados.length}");
}

double getSalarioTotal(List<Empleado> empleados){

  double total = 0.0;
  for (final empleado in empleados) {
    total += empleado.salario;
  }
  return total;
}